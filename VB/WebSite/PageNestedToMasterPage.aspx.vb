Imports System

Partial Public Class PageNestedToMasterPage
	Inherits System.Web.UI.Page

	Protected Sub Page_PreInit(ByVal sender As Object, ByVal e As EventArgs)
		DevExpress.Web.ASPxClasses.ASPxWebControl.SetIECompatibilityMode(7, Me.Master)
	End Sub
End Class