�
 TFRMGRAFICOALUNOS 0R  TPF0TFrmGraficoAlunosFrmGraficoAlunosLeft� TopxBorderIcons BorderStylebsSingleCaption   GráficoClientHeight"ClientWidthColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style 
KeyPreview	OldCreateOrderPosition	poDefaultScaledOnClose	FormCloseOnShowFormShowPixelsPerInch`
TextHeight TPanelPanel1Left Top WidthHeight)AlignalTopTabOrder  TBitBtnBtn_ImpGLeftTopWidthZHeightCursorcrHandPointCaption	&ImprimirFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrder OnClickBtn_ImpGClick	NumGlyphs   TBitBtn
Btn_FecharLeft�TopWidthZHeightCursorcrHandPointCaption&FecharFont.CharsetDEFAULT_CHARSET
Font.ColorclBlackFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFontTabOrderOnClickBtn_FecharClick	NumGlyphs  TDBChartDBChart_MatriculasLeft Top)WidthHeight�AllowPanningpmNone	AllowZoomAnimatedZoom	AnimatedZoomSteps
BackWall.Brush.ColorclWhiteBackWall.Brush.StylebsClearBackWall.Pen.VisibleGradient.DirectiongdBottomTopGradient.EndColorclWhiteGradient.Visible	
MarginLeftMarginRightPrintProportionalTitle.Font.CharsetDEFAULT_CHARSETTitle.Font.ColorclBlackTitle.Font.Height�Title.Font.NameArialTitle.Font.StylefsBold Title.Text.Strings   Matrículas AxisVisibleBottomAxis.DateTimeFormatyyyyBottomAxis.Increment      ��@BottomAxis.LabelsMultiLine	BottomAxis.LabelsSeparation BottomAxis.LabelStyletalValueBottomAxis.Title.CaptionAnosChart3DPercent
ClipPointsDepthAxis.DateTimeFormatdd/mm/yyDepthAxis.ExactDateTimeDepthAxis.Visible	Frame.VisibleLeftAxis.AxisValuesFormat
#,##00.###LeftAxis.DateTimeFormatyyyyLeftAxis.ExactDateTimeLeftAxis.Increment      ��@LeftAxis.LabelsMultiLine	LeftAxis.Logarithmic	LeftAxis.MinorTickLengthLeftAxis.Title.Font.CharsetANSI_CHARSETLeftAxis.Title.Font.ColorclWhiteLeftAxis.Title.Font.Height�LeftAxis.Title.Font.NameArialLeftAxis.Title.Font.StylefsBold LeftAxis.VisibleLegend.AlignmentlaBottomLegend.ColorWidthLegend.DividingLines.Visible	Legend.ResizeChartLegend.ShadowColorclGrayLegend.ShadowSizeLegend.TextStyleltsRightValueLegend.TopPos RightAxis.AxisValuesFormat
#,##00.###RightAxis.DateTimeFormatyyyyView3DOptions.Elevation;View3DOptions.HorizOffset�View3DOptions.OrthogonalView3DOptions.Perspective View3DOptions.RotationhView3DOptions.VertOffset	View3DOptions.Zoom`View3DWallsAlignalClient
BevelOuterbvNone
BevelWidth BorderWidthTabOrder 
TPieSeriesSeries1Cursor	crSQLWait	HorizAxisaBothHorizAxisMarks.Arrow.ColorclGrayMarks.ArrowLength
Marks.Font.CharsetDEFAULT_CHARSETMarks.Font.ColorclBlackMarks.Font.Height�Marks.Font.NameArialMarks.Font.StylefsBold Marks.StylesmsLabelPercentMarks.Transparent	Marks.Visible	
DataSourceQuery_GraficoMatriculasSeriesColorclRedValueFormat   #,##00.### MatrículasXLabelsSourceANOOtherSlice.StylepoBelowPercentOtherSlice.Text   MatrículasPiePen.VisiblePieValues.DateTimePieValues.NamePiePieValues.Multiplier       ��?PieValues.OrderloDescendingPieValues.ValueSource
MATRICULAS   
TStatusBar
StatusBar1Left TopWidthHeightPanels   TIBQueryQuery_GraficoMatriculasDatabaseDm.IBDatabaseTransactionDm.IBTransactionForcedRefresh	CachedUpdates	SQL.Strings8select ANO_LETIVO as Ano, count(MATRICULA) as Matriculasfrom MATRICULwhere ANO_LETIVO = ANO_LETIVOgroup by ANO_LETIVO Left� Top` TIBStringFieldQuery_GraficoMatriculasANO	FieldNameANOSize  TIntegerField!Query_GraficoMatriculasMATRICULAS	FieldName
MATRICULASRequired	   TDataSourceDs_Query_GraficoMatriculasDataSetQuery_GraficoMatriculasLeft� Top�    