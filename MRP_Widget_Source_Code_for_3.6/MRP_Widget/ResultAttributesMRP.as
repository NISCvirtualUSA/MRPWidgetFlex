	///////////////////////////////////////////////////////////////////////////////
	// Copyright (c) 2011-2014, G&H International Services Inc. All Rights Reserved
	///////////////////////////////////////////////////////////////////////////////
	

package widgets.MRP_Widget
{
	import com.esri.ags.Graphic;
	import com.esri.ags.geometry.Geometry;
	import com.esri.ags.geometry.MapPoint;

[Bindable]
public class ResultAttributesMRP
{
    public var title:String;
    public var content:String;
    public var link:String;
	public var graphic:Graphic;
	public var geometry:Geometry;
    public var linkAlias:String;
	public var mrpStatusIcon:String;
	public var mrpESFIcon:String;
	public var mrpState:String;
	public var mrpStateIcon:String;
	public var mrpStatus:String;
	public var mrpSimpleStatus:String;
	public var mrpCatalogType:String;
	public var nimsCategory:String;
	public var mrpEstFixedCost:String;
	public var point:MapPoint;
	public var mrpESF:String;
	
}
}
