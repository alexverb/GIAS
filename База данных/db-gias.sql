IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_dbview]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[v_dbview]
AS
SELECT     dbo.dbview.id AS viewID, dbo.dbview.short AS viewname, dbo.dbview.[full] AS viewNameFull, dbo.dbview.[desc] AS viewDescription, 
                      dbo.dbview.name AS viewNameSystem, dbo.dbview.[dviewtypeid] AS viewType, dbo.dbviewattrib.id AS viewAttribID, dbo.dbviewattrib.short AS viewAttribName, 
                      dbo.dbviewattrib.name AS viewAttribNameSys, dbo.viewattrib.paramorder AS viewAttribOrder, ddatatype_1.ID AS viewAttribDataTypeID, 
                      ddatatype_1.short AS viewAttribDataTypeName, ddatatype_1.[desc] AS viewAttribDataTypeDesc, ddatatype_1.datatype AS viewAttribDataTypeType, 
                      dbo.dbviewparam.id AS viewParamID, dbo.dbviewparam.short AS viewParamName, dbo.dbviewparam.name AS viewParamNameSys, 
                      dbo.dbviewparam.[table] AS viewParamTable, dbo.viewparam.paramorder AS viewParamOrder, dbo.ddatatype.ID AS viewParamTypeId, 
                      dbo.ddatatype.short AS viewParamTypeName, dbo.ddatatype.[desc] AS viewParamTypeDesc, 
                      dbo.ddatatype.datatype AS viewParamDataTypeType
FROM         dbo.dbview INNER JOIN
                      dbo.viewattrib ON dbo.dbview.id = dbo.viewattrib.viewid INNER JOIN
                      dbo.dbviewattrib ON dbo.viewattrib.attribid = dbo.dbviewattrib.id INNER JOIN
                      dbo.viewparam ON dbo.dbview.id = dbo.viewparam.viewid INNER JOIN
                      dbo.dbviewparam ON dbo.viewparam.paramid = dbo.dbviewparam.id INNER JOIN
                      dbo.ddatatype ON dbo.dbviewparam.datatypeid = dbo.ddatatype.ID INNER JOIN
                      dbo.ddatatype AS ddatatype_1 ON dbo.dbviewattrib.datatypeid = ddatatype_1.ID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'v_dbview', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[17] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1[50] 4[25] 3) )"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[38] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dbview"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 195
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "dbviewattrib"
            Begin Extent = 
               Top = 124
               Left = 26
               Bottom = 270
               Right = 183
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dbviewparam"
            Begin Extent = 
               Top = 21
               Left = 773
               Bottom = 181
               Right = 930
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "viewattrib"
            Begin Extent = 
               Top = 82
               Left = 293
               Bottom = 200
               Right = 450
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "viewparam"
            Begin Extent = 
               Top = 9
               Left = 562
               Bottom = 117
               Right = 719
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ddatatype"
            Begin Extent = 
               Top = 136
               Left = 1001
               Bottom = 276
               Right = 1158
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ddatatype_1"
            Begin Extent = 
               Top = 180
               Left = 545
               Bottom = 314
               Right = 702
            End
            ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_dbview'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'v_dbview', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2985
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_dbview'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'v_dbview', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_dbview'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_component]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[v_component]
as
select
c.id as componentID,
c.short as componentName,
dc.id as componentTypeID,
dc.short as componentType,
cp.id as componentIDParent,
cp.short as componentNameParent,
cv.id as componentVersionID,
cv.version + '' '' + cv.versionnum as componentVersion,
dcc.id as componentConnectionID,
dcc.short as componentConnectionName,
af.id as componentFuncID,
af.short as componentFuncName
from	
	component c
	join component cp on c.pid = cp.id
	join componentversion cv on c.id = cv.componentid
	join dcomponent dc on c.componentid = dc.id
	join dcomponentconn dcc on c.componentconnid = dcc.id
	join funcimplem fi on c.id = fi.componentid
	join availfunc af on fi.functionid = af.id'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_userlog]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[v_userlog]
as
select 
	u.id as userID,
	u.login as userLogin,
	u.firstname as userFirstName,
	u.lastname as userLastName,
	g.id as userGroupID,
	g.short as userGroup,
	l.id as logID,
	l.date as logDate,
	l.context as logContext
from
	[dbo].[user] u
	join dbo.dgroup g on u.groupid = g.id
	join dbo.userlog l on l.userid = u.id'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_param]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[v_param]
AS
SELECT     dbo.param.id AS paramID, dbo.param.short AS paramName, dbo.param.[desc] AS paramDesc, dbo.dunit.ID AS paramUnitID, 
                      dbo.dunit.short AS paramUnit, dbo.ddatatype.ID AS paramTypeID, dbo.ddatatype.short AS paramTypeName, dbo.ddatatype.[desc] AS paramTypeDesc, 
                      dbo.ddatatype.datatype AS paramTypeType, dbo.paramvalue.ID AS paramValueID, dbo.paramvalue.paramvalue AS paramValue, 
                      dbo.dparcat.ID AS paramCategoryID, dbo.dparcat.short AS paramCategoryName
FROM         dbo.ddatatype INNER JOIN
                      dbo.param ON dbo.ddatatype.ID = dbo.param.DDATATYPEID INNER JOIN
                      dbo.dparcat ON dbo.param.DPARCATID = dbo.dparcat.ID INNER JOIN
                      dbo.dunit ON dbo.param.DUNITID = dbo.dunit.ID INNER JOIN
                      dbo.paramvalue ON dbo.param.id = dbo.paramvalue.PARAMID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'v_param', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ddatatype"
            Begin Extent = 
               Top = 61
               Left = 15
               Bottom = 197
               Right = 172
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dparcat"
            Begin Extent = 
               Top = 7
               Left = 264
               Bottom = 115
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dunit"
            Begin Extent = 
               Top = 202
               Left = 15
               Bottom = 310
               Right = 172
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "param"
            Begin Extent = 
               Top = 36
               Left = 522
               Bottom = 195
               Right = 679
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "paramvalue"
            Begin Extent = 
               Top = 5
               Left = 737
               Bottom = 133
               Right = 894
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2985
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 135' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_param'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'v_param', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_param'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'v_param', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_param'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[VI_enterprise]'))
EXEC dbo.sp_executesql @statement = N'create view [dbo].[VI_enterprise]
as
SELECT
	--предприятие
	Ent.id AS EnterpriseID,
  Ent.name AS EnterpriseName,    
  EntCat.ID as EnterpriseCategoryID,
  EntCat.short as EnterpriseCategory,    
	--юр.форма
	JurOrg.ID as JuridicalOrganizationID,
	JurOrg.Short as JuridicalOrganization,
	--статус
	dStatus.ID as StatusID,	
	dStatus.Short as EnterpriseStatus,
	EntStatus.ID as EnterpriseStatusID,
	EntStatus.dbeg as StatusChanged,
	--деятельность
	EntActivity.ID as EnterpriseActivityID,
	ActType.ID as ActivityID,
	ActType.Short as EnterpriseActivity,
	--продукция
	Production.ID as EnterpriseProductionID,
	Production.Short as EnterpriseProduction,
	ProdCat.ID as ProductionCategoryID,
	ProdCat.Short as ProductionCategory
FROM
	dbo.enterprise  AS Ent INNER JOIN
  dbo.dcategory   AS EntCat      ON Ent.CATID          = EntCat.ID INNER JOIN
  dbo.entactivity AS EntActivity ON Ent.id             = EntActivity.ENTID INNER JOIN
  dbo.dacttype    AS ActType     ON EntActivity.ACTID  = ActType.ID INNER JOIN
  dbo.djurorg     AS JurOrg      ON Ent.JURID          = JurOrg.ID INNER JOIN
	dbo.production  AS Production  ON EntActivity.PRODID = Production.id  INNER JOIN    
	dbo.dprodcat    AS ProdCat     ON Production.CATID   = ProdCat.ID INNER JOIN
	dbo.entstatus   AS EntStatus   ON Ent.id             = EntStatus.ENTID INNER JOIN
	dbo.dstatus     AS dStatus     ON EntStatus.id       = dStatus.ID
    '
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[v_enterprise]'))
EXEC dbo.sp_executesql @statement = N'CREATE VIEW [dbo].[v_enterprise]
AS
SELECT     dbo.enterprise.id AS entID, dbo.enterprise.name AS entName, ato_2.id AS entRegAtoID, ato_2.name AS entRegAto, dbo.ato.id AS entPalceID, 
                      dbo.ato.name AS entPlaceAto, dbo.djurorg.ID AS entJurID, dbo.djurorg.short AS entJurName, dbo.dcategory.ID AS entCatId, 
                      dbo.dcategory.short AS entCatName, dbo.dstatus.ID AS entStatusId, dbo.dstatus.short AS entStatusName, dbo.entstatus.id AS entStatusDLID, 
                      dbo.entstatus.[desc] AS entStatusDesc, dbo.entstatus.dbeg AS entStatusFrom, dbo.entstatus.dend AS entStatusTo, dbo.entactivity.id AS entActId, 
                      dbo.dacttype.ID AS entActTypeId, dbo.dacttype.short AS entActType, ato_1.id AS entActAtoId, ato_1.name AS entActAtoName, 
                      dbo.production.id AS entProdID, dbo.production.short AS entProdname, dbo.dprodcat.ID AS entProdCatId, dbo.dprodcat.short AS entProdCat
FROM         dbo.dprodcat INNER JOIN
                      dbo.production ON dbo.dprodcat.ID = dbo.production.CATID INNER JOIN
                      dbo.entactivity INNER JOIN
                      dbo.dacttype ON dbo.entactivity.ACTID = dbo.dacttype.ID INNER JOIN
                      dbo.dcategory INNER JOIN
                      dbo.enterprise ON dbo.dcategory.ID = dbo.enterprise.CATID INNER JOIN
                      dbo.ato ON dbo.enterprise.ATOGEOID = dbo.ato.id ON dbo.entactivity.ENTID = dbo.enterprise.id INNER JOIN
                      dbo.entstatus INNER JOIN
                      dbo.dstatus ON dbo.entstatus.STATUSID = dbo.dstatus.ID ON dbo.enterprise.id = dbo.entstatus.ENTID ON 
                      dbo.production.id = dbo.entactivity.PRODID INNER JOIN
                      dbo.ato AS ato_1 ON dbo.entactivity.ATOID = ato_1.id INNER JOIN
                      dbo.ato AS ato_2 ON dbo.enterprise.ATOREGID = ato_2.id INNER JOIN
                      dbo.djurorg ON dbo.enterprise.JURID = dbo.djurorg.ID
'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'v_enterprise', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1[54] 4) )"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 9
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "dcategory"
            Begin Extent = 
               Top = 325
               Left = 10
               Bottom = 433
               Right = 167
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dstatus"
            Begin Extent = 
               Top = 339
               Left = 610
               Bottom = 447
               Right = 767
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dprodcat"
            Begin Extent = 
               Top = 50
               Left = 1058
               Bottom = 158
               Right = 1215
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "dacttype"
            Begin Extent = 
               Top = 64
               Left = 693
               Bottom = 172
               Right = 850
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ato"
            Begin Extent = 
               Top = 167
               Left = 11
               Bottom = 321
               Right = 168
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "entactivity"
            Begin Extent = 
               Top = 0
               Left = 423
               Bottom = 134
               Right = 580
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "enterprise"
            Begin Extent = 
               Top = 122
               Left = 223
               Bottom = 263
               Right = 380
            End
            DisplayFl' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_enterprise'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPane2' , N'SCHEMA',N'dbo', N'VIEW',N'v_enterprise', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'ags = 280
            TopColumn = 0
         End
         Begin Table = "entstatus"
            Begin Extent = 
               Top = 136
               Left = 422
               Bottom = 278
               Right = 579
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "production"
            Begin Extent = 
               Top = 2
               Left = 852
               Bottom = 127
               Right = 1009
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ato_1"
            Begin Extent = 
               Top = 173
               Left = 612
               Bottom = 335
               Right = 769
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ato_2"
            Begin Extent = 
               Top = 8
               Left = 12
               Bottom = 166
               Right = 169
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "djurorg"
            Begin Extent = 
               Top = 283
               Left = 422
               Bottom = 391
               Right = 579
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
      PaneHidden = 
   End
   Begin DataPane = 
      PaneHidden = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2820
         Alias = 2925
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_enterprise'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'v_enterprise', NULL,NULL))
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'v_enterprise'
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_entactivity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Вербецкий
-- Description:	Работа с видами деятельности предприятия
-- =============================================
CREATE procedure [dbo].[p_entactivity]
--процедура изменения entactivity
--если ID отрицательный - запись создается
--если ID положительный и все обязательные поля пустые - удаляется
--иначе - изменяется    
-- предполагается вызывать эту процедуру (и ее аналоги) после всех проверок,
-- когда данные могут быть безопасно добавлены в БД
    @id int,
    @prodid int,
    @entid int,
    @actid int,
    @atoid int
as
declare @inserted int;
declare @rowcnt int;
declare @errormsg nvarchar(160);   
if @id < 1
  -- готовим операцию вставки данных
    insert into entactivity values (@prodid, @entid, @actid, @atoid);
else      
  begin
    -- проверим, что объект уникален
    select @rowcnt = count(*) from entactivity where id = @id;    
	  if @rowcnt < 1 
	    -- объект не найден
	    begin
	      set @errormsg = N''Деятельность ID '' + cast (@id as varchar) + '' предприятия не найдена'';
		    RAISERROR(@errormsg,16,1);
	    end
	  else
	    if @rowcnt > 1
	      -- объект неуникален
	      begin
	        set @errormsg = N''Деятельность ID '' + cast (@id as varchar) + '' предприятия неуникальна'';
		      RAISERROR(@errormsg,16,1);			        
	      end
	    else	      
	      -- объект найден и уникален
	      if @prodid is null or @entid is null or @actid is null or @atoid is null
	        --если одно из ключевых полей пропущено - удаляем
	        delete from entactivity where id = @id;
	      else
	      begin	        
	          -- обязательное поле заполнено - готовим скрипт обновления
	            update entactivity
	            set
	              prodid = @prodid,
	              entid = @entid,
	              actid = @actid,
	              atoid = @atoid
	            where id = @id;	
	      end
  end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[p_entstatus]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- =============================================
-- Author:		Вербецкий
-- Description:	Работа со статусами предприятия
-- =============================================
CREATE procedure [dbo].[p_entstatus]
--процедура изменения entstatus
--если ID отрицательный - запись создается
--если ID положительный и все обязательные поля пустые - удаляется
--иначе - изменяется    
-- предполагается вызывать эту процедуру (и ее аналоги) после всех проверок,
-- когда данные могут быть безопасно добавлены в БД
    @id int,
    @dbeg datetime,
    @dend datetime,
    @desc varchar(500),
    @entid int,
    @statusid int
as
declare @inserted int;
declare @rowcnt int;
declare @errormsg nvarchar(160);   
if @id < 1
  -- готовим операцию вставки данных
    insert into entstatus values (@dbeg,@dend,@desc,@entid,@statusid);
else      
  begin
    -- проверим, что объект уникален
    select @rowcnt = count(*) from entstatus where id = @id;    
	  if @rowcnt < 1 
	    -- объект не найден
	    begin
	      set @errormsg = N''Статус ID '' + cast (@id as varchar) + '' предприятия не найден'';
		    RAISERROR(@errormsg,16,1);
	    end
	  else
	    if @rowcnt > 1
	      -- объект неуникален
	      begin
	        set @errormsg = N''Статус ID '' + cast (@id as varchar) + '' предприятия неуникален'';
		      RAISERROR(@errormsg,16,1);			        
	      end
	    else
	      -- объект найден и уникален
	      begin
	        if @dbeg is null or @entid is null or @statusid is null
	          -- обязательное поле пусто - готовим скрипт удаления
	          delete from entstatus where id = @id;
	        else
	          -- обязательное поле заполнено - готовим скрипт обновления
	          update entstatus
	          set
	            dbeg = @dbeg,
	            dend = @dend,
	            [desc] = @desc,
	            entid = @entid,
	            statusid = @statusid
	          where id = @id;
	      end
  end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[entactvalue]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[entactvalue](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ENTACTID] [int] NOT NULL,
	[APARAMID] [int] NOT NULL,
 CONSTRAINT [PK_entactvalue] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_availfunc_availfunc]') AND parent_object_id = OBJECT_ID(N'[dbo].[availfunc]'))
ALTER TABLE [dbo].[availfunc]  WITH CHECK ADD  CONSTRAINT [FK_availfunc_availfunc] FOREIGN KEY([PID])
REFERENCES [dbo].[availfunc] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_availfunc_availfunc]') AND parent_object_id = OBJECT_ID(N'[dbo].[availfunc]'))
ALTER TABLE [dbo].[availfunc] CHECK CONSTRAINT [FK_availfunc_availfunc]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atokind_atokind]') AND parent_object_id = OBJECT_ID(N'[dbo].[atokind]'))
ALTER TABLE [dbo].[atokind]  WITH CHECK ADD  CONSTRAINT [FK_atokind_atokind] FOREIGN KEY([PID])
REFERENCES [dbo].[atokind] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atokind_atokind]') AND parent_object_id = OBJECT_ID(N'[dbo].[atokind]'))
ALTER TABLE [dbo].[atokind] CHECK CONSTRAINT [FK_atokind_atokind]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ato_atd]') AND parent_object_id = OBJECT_ID(N'[dbo].[ato]'))
ALTER TABLE [dbo].[ato]  WITH CHECK ADD  CONSTRAINT [FK_ato_atd] FOREIGN KEY([ATDID])
REFERENCES [dbo].[atd] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ato_atd]') AND parent_object_id = OBJECT_ID(N'[dbo].[ato]'))
ALTER TABLE [dbo].[ato] CHECK CONSTRAINT [FK_ato_atd]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ato_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[ato]'))
ALTER TABLE [dbo].[ato]  WITH CHECK ADD  CONSTRAINT [FK_ato_ato] FOREIGN KEY([PID])
REFERENCES [dbo].[ato] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ato_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[ato]'))
ALTER TABLE [dbo].[ato] CHECK CONSTRAINT [FK_ato_ato]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ato_atokind]') AND parent_object_id = OBJECT_ID(N'[dbo].[ato]'))
ALTER TABLE [dbo].[ato]  WITH CHECK ADD  CONSTRAINT [FK_ato_atokind] FOREIGN KEY([ATOKINDID])
REFERENCES [dbo].[atokind] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ato_atokind]') AND parent_object_id = OBJECT_ID(N'[dbo].[ato]'))
ALTER TABLE [dbo].[ato] CHECK CONSTRAINT [FK_ato_atokind]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_component_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[component]'))
ALTER TABLE [dbo].[component]  WITH CHECK ADD  CONSTRAINT [FK_component_component] FOREIGN KEY([PID])
REFERENCES [dbo].[component] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_component_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[component]'))
ALTER TABLE [dbo].[component] CHECK CONSTRAINT [FK_component_component]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_component_dcomponent]') AND parent_object_id = OBJECT_ID(N'[dbo].[component]'))
ALTER TABLE [dbo].[component]  WITH CHECK ADD  CONSTRAINT [FK_component_dcomponent] FOREIGN KEY([COMPONENTID])
REFERENCES [dbo].[dcomponent] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_component_dcomponent]') AND parent_object_id = OBJECT_ID(N'[dbo].[component]'))
ALTER TABLE [dbo].[component] CHECK CONSTRAINT [FK_component_dcomponent]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_component_dcomponentconn]') AND parent_object_id = OBJECT_ID(N'[dbo].[component]'))
ALTER TABLE [dbo].[component]  WITH CHECK ADD  CONSTRAINT [FK_component_dcomponentconn] FOREIGN KEY([COMPONENTCONNID])
REFERENCES [dbo].[dcomponentconn] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_component_dcomponentconn]') AND parent_object_id = OBJECT_ID(N'[dbo].[component]'))
ALTER TABLE [dbo].[component] CHECK CONSTRAINT [FK_component_dcomponentconn]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbviewparam_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbviewparam]'))
ALTER TABLE [dbo].[dbviewparam]  WITH CHECK ADD  CONSTRAINT [FK_dbviewparam_ddatatype] FOREIGN KEY([datatypeid])
REFERENCES [dbo].[ddatatype] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbviewparam_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbviewparam]'))
ALTER TABLE [dbo].[dbviewparam] CHECK CONSTRAINT [FK_dbviewparam_ddatatype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbviewattrib_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbviewattrib]'))
ALTER TABLE [dbo].[dbviewattrib]  WITH CHECK ADD  CONSTRAINT [FK_dbviewattrib_ddatatype] FOREIGN KEY([datatypeid])
REFERENCES [dbo].[ddatatype] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbviewattrib_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbviewattrib]'))
ALTER TABLE [dbo].[dbviewattrib] CHECK CONSTRAINT [FK_dbviewattrib_ddatatype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbview_dbviewtype]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbview]'))
ALTER TABLE [dbo].[dbview]  WITH CHECK ADD  CONSTRAINT [FK_dbview_dbviewtype] FOREIGN KEY([dviewtypeid])
REFERENCES [dbo].[dbviewtype] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbview_dbviewtype]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbview]'))
ALTER TABLE [dbo].[dbview] CHECK CONSTRAINT [FK_dbview_dbviewtype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_grouprights_availfunc]') AND parent_object_id = OBJECT_ID(N'[dbo].[grouprights]'))
ALTER TABLE [dbo].[grouprights]  WITH CHECK ADD  CONSTRAINT [FK_grouprights_availfunc] FOREIGN KEY([FUNCTIONID])
REFERENCES [dbo].[availfunc] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_grouprights_availfunc]') AND parent_object_id = OBJECT_ID(N'[dbo].[grouprights]'))
ALTER TABLE [dbo].[grouprights] CHECK CONSTRAINT [FK_grouprights_availfunc]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_grouprights_dgroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[grouprights]'))
ALTER TABLE [dbo].[grouprights]  WITH CHECK ADD  CONSTRAINT [FK_grouprights_dgroup] FOREIGN KEY([GROUPID])
REFERENCES [dbo].[dgroup] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_grouprights_dgroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[grouprights]'))
ALTER TABLE [dbo].[grouprights] CHECK CONSTRAINT [FK_grouprights_dgroup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sysparam_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[sysparam]'))
ALTER TABLE [dbo].[sysparam]  WITH CHECK ADD  CONSTRAINT [FK_sysparam_ddatatype] FOREIGN KEY([DDATATTYPEID])
REFERENCES [dbo].[ddatatype] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sysparam_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[sysparam]'))
ALTER TABLE [dbo].[sysparam] CHECK CONSTRAINT [FK_sysparam_ddatatype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_production_dprodcat]') AND parent_object_id = OBJECT_ID(N'[dbo].[production]'))
ALTER TABLE [dbo].[production]  WITH CHECK ADD  CONSTRAINT [FK_production_dprodcat] FOREIGN KEY([CATID])
REFERENCES [dbo].[dprodcat] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_production_dprodcat]') AND parent_object_id = OBJECT_ID(N'[dbo].[production]'))
ALTER TABLE [dbo].[production] CHECK CONSTRAINT [FK_production_dprodcat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_user_dgroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK_user_dgroup] FOREIGN KEY([GROUPID])
REFERENCES [dbo].[dgroup] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_user_dgroup]') AND parent_object_id = OBJECT_ID(N'[dbo].[user]'))
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK_user_dgroup]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_param_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[param]'))
ALTER TABLE [dbo].[param]  WITH CHECK ADD  CONSTRAINT [FK_param_ddatatype] FOREIGN KEY([DDATATYPEID])
REFERENCES [dbo].[ddatatype] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_param_ddatatype]') AND parent_object_id = OBJECT_ID(N'[dbo].[param]'))
ALTER TABLE [dbo].[param] CHECK CONSTRAINT [FK_param_ddatatype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_param_dparcat]') AND parent_object_id = OBJECT_ID(N'[dbo].[param]'))
ALTER TABLE [dbo].[param]  WITH CHECK ADD  CONSTRAINT [FK_param_dparcat] FOREIGN KEY([DPARCATID])
REFERENCES [dbo].[dparcat] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_param_dparcat]') AND parent_object_id = OBJECT_ID(N'[dbo].[param]'))
ALTER TABLE [dbo].[param] CHECK CONSTRAINT [FK_param_dparcat]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_param_dunit]') AND parent_object_id = OBJECT_ID(N'[dbo].[param]'))
ALTER TABLE [dbo].[param]  WITH CHECK ADD  CONSTRAINT [FK_param_dunit] FOREIGN KEY([DUNITID])
REFERENCES [dbo].[dunit] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_param_dunit]') AND parent_object_id = OBJECT_ID(N'[dbo].[param]'))
ALTER TABLE [dbo].[param] CHECK CONSTRAINT [FK_param_dunit]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewparam_dbview]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewparam]'))
ALTER TABLE [dbo].[viewparam]  WITH CHECK ADD  CONSTRAINT [FK_viewparam_dbview] FOREIGN KEY([viewid])
REFERENCES [dbo].[dbview] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewparam_dbview]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewparam]'))
ALTER TABLE [dbo].[viewparam] CHECK CONSTRAINT [FK_viewparam_dbview]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewparam_dbviewparam]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewparam]'))
ALTER TABLE [dbo].[viewparam]  WITH CHECK ADD  CONSTRAINT [FK_viewparam_dbviewparam] FOREIGN KEY([paramid])
REFERENCES [dbo].[dbviewparam] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewparam_dbviewparam]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewparam]'))
ALTER TABLE [dbo].[viewparam] CHECK CONSTRAINT [FK_viewparam_dbviewparam]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewattrib_dbview]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewattrib]'))
ALTER TABLE [dbo].[viewattrib]  WITH CHECK ADD  CONSTRAINT [FK_viewattrib_dbview] FOREIGN KEY([viewid])
REFERENCES [dbo].[dbview] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewattrib_dbview]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewattrib]'))
ALTER TABLE [dbo].[viewattrib] CHECK CONSTRAINT [FK_viewattrib_dbview]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewattrib_dbviewattrib]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewattrib]'))
ALTER TABLE [dbo].[viewattrib]  WITH CHECK ADD  CONSTRAINT [FK_viewattrib_dbviewattrib] FOREIGN KEY([attribid])
REFERENCES [dbo].[dbviewattrib] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_viewattrib_dbviewattrib]') AND parent_object_id = OBJECT_ID(N'[dbo].[viewattrib]'))
ALTER TABLE [dbo].[viewattrib] CHECK CONSTRAINT [FK_viewattrib_dbviewattrib]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_userlog_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[userlog]'))
ALTER TABLE [dbo].[userlog]  WITH CHECK ADD  CONSTRAINT [FK_userlog_user] FOREIGN KEY([USERID])
REFERENCES [dbo].[user] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_userlog_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[userlog]'))
ALTER TABLE [dbo].[userlog] CHECK CONSTRAINT [FK_userlog_user]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sysoptvalue_sysopttype]') AND parent_object_id = OBJECT_ID(N'[dbo].[sysparamvalue]'))
ALTER TABLE [dbo].[sysparamvalue]  WITH CHECK ADD  CONSTRAINT [FK_sysoptvalue_sysopttype] FOREIGN KEY([SYSPARAMID])
REFERENCES [dbo].[sysparam] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_sysoptvalue_sysopttype]') AND parent_object_id = OBJECT_ID(N'[dbo].[sysparamvalue]'))
ALTER TABLE [dbo].[sysparamvalue] CHECK CONSTRAINT [FK_sysoptvalue_sysopttype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_paramvalue_param]') AND parent_object_id = OBJECT_ID(N'[dbo].[paramvalue]'))
ALTER TABLE [dbo].[paramvalue]  WITH CHECK ADD  CONSTRAINT [FK_paramvalue_param] FOREIGN KEY([PARAMID])
REFERENCES [dbo].[param] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_paramvalue_param]') AND parent_object_id = OBJECT_ID(N'[dbo].[paramvalue]'))
ALTER TABLE [dbo].[paramvalue] CHECK CONSTRAINT [FK_paramvalue_param]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise]  WITH CHECK ADD  CONSTRAINT [FK_enterprise_ato] FOREIGN KEY([ATOGEOID])
REFERENCES [dbo].[ato] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise] CHECK CONSTRAINT [FK_enterprise_ato]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_ato1]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise]  WITH CHECK ADD  CONSTRAINT [FK_enterprise_ato1] FOREIGN KEY([ATOREGID])
REFERENCES [dbo].[ato] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_ato1]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise] CHECK CONSTRAINT [FK_enterprise_ato1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_dcategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise]  WITH CHECK ADD  CONSTRAINT [FK_enterprise_dcategory] FOREIGN KEY([CATID])
REFERENCES [dbo].[dcategory] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_dcategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise] CHECK CONSTRAINT [FK_enterprise_dcategory]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_djurorg1]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise]  WITH CHECK ADD  CONSTRAINT [FK_enterprise_djurorg1] FOREIGN KEY([JURID])
REFERENCES [dbo].[djurorg] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_enterprise_djurorg1]') AND parent_object_id = OBJECT_ID(N'[dbo].[enterprise]'))
ALTER TABLE [dbo].[enterprise] CHECK CONSTRAINT [FK_enterprise_djurorg1]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_optclient_opttype]') AND parent_object_id = OBJECT_ID(N'[dbo].[optclient]'))
ALTER TABLE [dbo].[optclient]  WITH CHECK ADD  CONSTRAINT [FK_optclient_opttype] FOREIGN KEY([dopttypeid])
REFERENCES [dbo].[opttype] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_optclient_opttype]') AND parent_object_id = OBJECT_ID(N'[dbo].[optclient]'))
ALTER TABLE [dbo].[optclient] CHECK CONSTRAINT [FK_optclient_opttype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_optgeneral_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[optclient]'))
ALTER TABLE [dbo].[optclient]  WITH CHECK ADD  CONSTRAINT [FK_optgeneral_user] FOREIGN KEY([USERID])
REFERENCES [dbo].[user] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_optgeneral_user]') AND parent_object_id = OBJECT_ID(N'[dbo].[optclient]'))
ALTER TABLE [dbo].[optclient] CHECK CONSTRAINT [FK_optgeneral_user]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_funcimplem_availfunc]') AND parent_object_id = OBJECT_ID(N'[dbo].[funcimplem]'))
ALTER TABLE [dbo].[funcimplem]  WITH CHECK ADD  CONSTRAINT [FK_funcimplem_availfunc] FOREIGN KEY([FUNCTIONID])
REFERENCES [dbo].[availfunc] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_funcimplem_availfunc]') AND parent_object_id = OBJECT_ID(N'[dbo].[funcimplem]'))
ALTER TABLE [dbo].[funcimplem] CHECK CONSTRAINT [FK_funcimplem_availfunc]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_funcimplem_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[funcimplem]'))
ALTER TABLE [dbo].[funcimplem]  WITH CHECK ADD  CONSTRAINT [FK_funcimplem_component] FOREIGN KEY([COMPONENTID])
REFERENCES [dbo].[component] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_funcimplem_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[funcimplem]'))
ALTER TABLE [dbo].[funcimplem] CHECK CONSTRAINT [FK_funcimplem_component]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbvievparamvalue_dbviewparam]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbvievparamvalue]'))
ALTER TABLE [dbo].[dbvievparamvalue]  WITH CHECK ADD  CONSTRAINT [FK_dbvievparamvalue_dbviewparam] FOREIGN KEY([DBVIEWPARAMID])
REFERENCES [dbo].[dbviewparam] ([id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbvievparamvalue_dbviewparam]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbvievparamvalue]'))
ALTER TABLE [dbo].[dbvievparamvalue] CHECK CONSTRAINT [FK_dbvievparamvalue_dbviewparam]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'dbvievparamvalue', N'CONSTRAINT',N'FK_dbvievparamvalue_dbviewparam'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Связь между параметром представления и его значением/ссылкой' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dbvievparamvalue', @level2type=N'CONSTRAINT',@level2name=N'FK_dbvievparamvalue_dbviewparam'
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbvievparamvalue_dbviewparam1]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbvievparamvalue]'))
ALTER TABLE [dbo].[dbvievparamvalue]  WITH NOCHECK ADD  CONSTRAINT [FK_dbvievparamvalue_dbviewparam1] FOREIGN KEY([DBVIEWPARAMLINKID])
REFERENCES [dbo].[dbviewparam] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_dbvievparamvalue_dbviewparam1]') AND parent_object_id = OBJECT_ID(N'[dbo].[dbvievparamvalue]'))
ALTER TABLE [dbo].[dbvievparamvalue] NOCHECK CONSTRAINT [FK_dbvievparamvalue_dbviewparam1]
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'dbvievparamvalue', N'CONSTRAINT',N'FK_dbvievparamvalue_dbviewparam1'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Описание значения параметра, как ссылки на другой параметр (enterprise.kurid = djurorg.id)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'dbvievparamvalue', @level2type=N'CONSTRAINT',@level2name=N'FK_dbvievparamvalue_dbviewparam1'
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_componentversion_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[componentversion]'))
ALTER TABLE [dbo].[componentversion]  WITH CHECK ADD  CONSTRAINT [FK_componentversion_component] FOREIGN KEY([COMPONENTID])
REFERENCES [dbo].[component] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_componentversion_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[componentversion]'))
ALTER TABLE [dbo].[componentversion] CHECK CONSTRAINT [FK_componentversion_component]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atomap_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[atomap]'))
ALTER TABLE [dbo].[atomap]  WITH CHECK ADD  CONSTRAINT [FK_atomap_ato] FOREIGN KEY([atoid])
REFERENCES [dbo].[ato] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atomap_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[atomap]'))
ALTER TABLE [dbo].[atomap] CHECK CONSTRAINT [FK_atomap_ato]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atomap_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[atomap]'))
ALTER TABLE [dbo].[atomap]  WITH CHECK ADD  CONSTRAINT [FK_atomap_component] FOREIGN KEY([componentid])
REFERENCES [dbo].[component] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atomap_component]') AND parent_object_id = OBJECT_ID(N'[dbo].[atomap]'))
ALTER TABLE [dbo].[atomap] CHECK CONSTRAINT [FK_atomap_component]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atovalue_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[atovalue]'))
ALTER TABLE [dbo].[atovalue]  WITH CHECK ADD  CONSTRAINT [FK_atovalue_ato] FOREIGN KEY([ATOID])
REFERENCES [dbo].[ato] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atovalue_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[atovalue]'))
ALTER TABLE [dbo].[atovalue] CHECK CONSTRAINT [FK_atovalue_ato]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atovalue_paramvalue]') AND parent_object_id = OBJECT_ID(N'[dbo].[atovalue]'))
ALTER TABLE [dbo].[atovalue]  WITH CHECK ADD  CONSTRAINT [FK_atovalue_paramvalue] FOREIGN KEY([APARAMID])
REFERENCES [dbo].[paramvalue] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_atovalue_paramvalue]') AND parent_object_id = OBJECT_ID(N'[dbo].[atovalue]'))
ALTER TABLE [dbo].[atovalue] CHECK CONSTRAINT [FK_atovalue_paramvalue]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entvalue_enterprise]') AND parent_object_id = OBJECT_ID(N'[dbo].[entvalue]'))
ALTER TABLE [dbo].[entvalue]  WITH CHECK ADD  CONSTRAINT [FK_entvalue_enterprise] FOREIGN KEY([ENTID])
REFERENCES [dbo].[enterprise] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entvalue_enterprise]') AND parent_object_id = OBJECT_ID(N'[dbo].[entvalue]'))
ALTER TABLE [dbo].[entvalue] CHECK CONSTRAINT [FK_entvalue_enterprise]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entvalue_paramvalue]') AND parent_object_id = OBJECT_ID(N'[dbo].[entvalue]'))
ALTER TABLE [dbo].[entvalue]  WITH CHECK ADD  CONSTRAINT [FK_entvalue_paramvalue] FOREIGN KEY([APARAMID])
REFERENCES [dbo].[paramvalue] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entvalue_paramvalue]') AND parent_object_id = OBJECT_ID(N'[dbo].[entvalue]'))
ALTER TABLE [dbo].[entvalue] CHECK CONSTRAINT [FK_entvalue_paramvalue]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entstatus_dstatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[entstatus]'))
ALTER TABLE [dbo].[entstatus]  WITH CHECK ADD  CONSTRAINT [FK_entstatus_dstatus] FOREIGN KEY([STATUSID])
REFERENCES [dbo].[dstatus] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entstatus_dstatus]') AND parent_object_id = OBJECT_ID(N'[dbo].[entstatus]'))
ALTER TABLE [dbo].[entstatus] CHECK CONSTRAINT [FK_entstatus_dstatus]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entstatus_enterprise]') AND parent_object_id = OBJECT_ID(N'[dbo].[entstatus]'))
ALTER TABLE [dbo].[entstatus]  WITH CHECK ADD  CONSTRAINT [FK_entstatus_enterprise] FOREIGN KEY([ENTID])
REFERENCES [dbo].[enterprise] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entstatus_enterprise]') AND parent_object_id = OBJECT_ID(N'[dbo].[entstatus]'))
ALTER TABLE [dbo].[entstatus] CHECK CONSTRAINT [FK_entstatus_enterprise]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity]  WITH CHECK ADD  CONSTRAINT [FK_entactivity_ato] FOREIGN KEY([ATOID])
REFERENCES [dbo].[ato] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_ato]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity] CHECK CONSTRAINT [FK_entactivity_ato]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_dacttype]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity]  WITH CHECK ADD  CONSTRAINT [FK_entactivity_dacttype] FOREIGN KEY([ACTID])
REFERENCES [dbo].[dacttype] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_dacttype]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity] CHECK CONSTRAINT [FK_entactivity_dacttype]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_enterprise]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity]  WITH CHECK ADD  CONSTRAINT [FK_entactivity_enterprise] FOREIGN KEY([ENTID])
REFERENCES [dbo].[enterprise] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_enterprise]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity] CHECK CONSTRAINT [FK_entactivity_enterprise]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_production]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity]  WITH CHECK ADD  CONSTRAINT [FK_entactivity_production] FOREIGN KEY([PRODID])
REFERENCES [dbo].[production] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactivity_production]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactivity]'))
ALTER TABLE [dbo].[entactivity] CHECK CONSTRAINT [FK_entactivity_production]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactvalue_entactivity]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactvalue]'))
ALTER TABLE [dbo].[entactvalue]  WITH CHECK ADD  CONSTRAINT [FK_entactvalue_entactivity] FOREIGN KEY([ENTACTID])
REFERENCES [dbo].[entactivity] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactvalue_entactivity]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactvalue]'))
ALTER TABLE [dbo].[entactvalue] CHECK CONSTRAINT [FK_entactvalue_entactivity]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactvalue_paramvalue]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactvalue]'))
ALTER TABLE [dbo].[entactvalue]  WITH CHECK ADD  CONSTRAINT [FK_entactvalue_paramvalue] FOREIGN KEY([APARAMID])
REFERENCES [dbo].[paramvalue] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_entactvalue_paramvalue]') AND parent_object_id = OBJECT_ID(N'[dbo].[entactvalue]'))
ALTER TABLE [dbo].[entactvalue] CHECK CONSTRAINT [FK_entactvalue_paramvalue]
GO
