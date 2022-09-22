Imports System

Partial Public Class StandalonePage
	Inherits System.Web.UI.Page

	Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)
		DevExpress.Web.ASPxClasses.ASPxWebControl.SetIECompatibilityMode(7, Me)
	End Sub
End Class