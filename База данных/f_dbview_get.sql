USE [gias]
GO

/****** Object:  UserDefinedFunction [dbo].[f_dbview_get]    Script Date: 07/10/2012 10:22:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[f_dbview_get] 
(
	@id int
)
RETURNS varchar(2000)
AS
BEGIN
  declare    
    @from_full   varchar(500),
    @from_temp    varchar(120),
    @select_full  varchar(500),
    @select_temp   varchar(120),
    @where_full    varchar(500),
    @where_temp    varchar(120),
    @paramid       integer
  
  declare from_part cursor for
    select distinct dvp.[table]
    from
      dbviewparam dvp
      join viewparam vp on dvp.id = vp.paramid
      join dbview dv on vp.viewid = dv.id
    where dv.ID = @id;

  declare select_part cursor for
    select dva.[table] + ' .' + dva.name
    from
      dbviewattrib dva
      join viewattrib va on dva.id = va.attribid
      join dbview dv on va.viewid = dv.id
    where dv.ID = @id;
    
  declare where_part cursor for
    select dvp.[table] + ' .' + dvp.name + ' = ', dvp.id 
    from
      dbviewparam dvp
      join viewparam va on dvp.id = va.paramid
      join dbview dv on va.viewid = dv.id
    where dv.ID = @id;      
  
  -- собираем from
  open from_part;
  fetch next from from_part into @From_temp
  while @@FETCH_STATUS = 0
  begin
    if len(@from_full) = 0 set @from_full = @from_temp;
    else set @from_full = @from_full + ', ' + @from_temp
    fetch next from from_part into @from_temp
  end    
  close from_part;
  deallocate from_part;
  
  --собираем select
  open select_part
  fetch next from select_part into @select_temp
  while @@FETCH_STATUS = 0
  begin
    if len(@select_full) = 0 set @select_full = @select_temp;
    else set @select_full = @select_full + ', ' + @select_temp
    fetch next from select_part into @select_temp
  end  
  close select_part
  deallocate select_part


  --собираем where
  open where_part
  fetch next from where_part into @where_temp, @paramid
  while @@FETCH_STATUS = 0
  begin
    declare @value varchar(160)
    select  
      @value =
        case
          when value is not null  then value
          else (
            select dvp1.[table] + '.' + dvp1.[name]
            from dbviewparam dvp1
            where dvp1.id = dvp.DBVIEWPARAMID
            )
        end
    from dbviewparam dvp
    where dvp.id = @paramid
    set @where_temp = @where_temp + @value    
    if len(@where_full) = 0 set @where_full = @where_temp;
    else set @where_full = @where_full + ' and ' + @where_temp    
    fetch next from where_part into @where_temp, @paramid
  end
  
  close where_part
  deallocate where_part
  
  return 'select ' + @select_full + ' from ' + @from_full + ' where ' + @where_full
END

GO

