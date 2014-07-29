******************************************
README 7/26/2014
MRP Widget for ArcGIS Viewer for Flex 3.6
******************************************

The included MRP_Widget code has the capability to display the state of origin for MRPs by status for use during Capstone 14.  This widget does not contain graphics or the display logic for all 50 states.  Approximately 25 state logo icons were developed for the exercise.  Additional icons can only be inserted by making changes to the widget code base.   This version also has the ability to turn on and off and re-draw the MRP graphics without closing the widget.

KYEM is now hosting the MASS/MRP Service from a new server: http://gis.kyemweb.com:3571/arcgis/rest/services/MASS_MRP/MapServer/0.  
The XML configuration file for earlier version of this widget will have to be updated with this new URL in order to work.

Viewing this feed from KYEM's deployment of MASS no longer requires a password. 
However, please note that network access to KYEM and MASS is still required to edit the MRP content.  
The web link to the MASS system is available from the popup window of any MRP where you will be prompted for a password. 
For best results KYEM recommends using Internet Explorer as the browser.

If you require a password to MASS, please contact Doug Eades of KYEM for a login:   james.eades2.nfg@mail.mil  

******************************
NOTE about State EMA Graphics:
******************************

The graphics used when the user clicks "Show Origin" are contained in the folder assets/images/mrp/ema_logos - and named similar to this example: SC_EMA35x.png.

If an EMA logo graphics is incorrect, or a different logo is desired, please locate the graphic in question and replace it with a different 35x by 35x sized graphic with the same name.  Not all state EMA's have been provided with this widget, and in those cases a STATE_EMA35x.png graphic showing "N/A" is used.  In those cases
 
	1) Open the state EMA graphic in a graphics tool to verify the contents of the graphic.  
	2) Create a new graphic of the  that you replace the existing state's graphic, with a correctly use exactly the 
 


***********************************************************************************
INSTALLATION NOTES for Compiled version of the Widget that utilized the .SWF files:
***********************************************************************************
This code was compiled for the 3.6 Flexviewer, and uses the Esri 3.6 ArcGIS API for Flex, and Adobe Flash 4.6.0


1) Required Files and locations:

	Copy the "mrp" folder inside the assets/images folder of your ArcGIS Viewer For Flex.
	Copy the "MRP_Widget" folder into the "widgets" folder of your ArcGIS Viewer For Flex

 		- assets/images/mrp - this folder contains all necessary images for the new version.
 		- widgets/MRP_Widget - this folder contains all necessary code for the widget.
 
 

2) Flexviewer config.xml must have an entry that specifies the new widget:

        <widget label="MRP Status" left="80" top="80"
            icon="assets/images/mrp/MRP_Green_40x.png"
            config="widgets/MRP_Widget/QueryWidget_MRP.xml"
            url="widgets/MRP_Widget/QueryWidget.swf"/>  



***********************************
Example Schema for MRP Map Service
***********************************

This version is similar to the preview versions, in that it relies on a specific MRP data structure used by KYEM.  Below is are the specific fields available from the MRP Rest endpoint:

Fields:

Name (Type: esriFieldTypeString, Alias: Name, Length: 400 )
OrganizationID (Type: esriFieldTypeGUID, Alias: OrganizationID, Length: 78 )
MRPStatus (Type: esriFieldTypeString, Alias: MRPStatus, Length: 255 )
StatusExplanation (Type: esriFieldTypeString, Alias: StatusExplanation, Length: 2147483647 )
Publish (Type: esriFieldTypeInteger, Alias: Publish)
MissionCapabilities (Type: esriFieldTypeString, Alias: MissionCapabilities, Length: 2147483647 )
Description (Type: esriFieldTypeString, Alias: Description, Length: 2147483647 )
NIMSResource (Type: esriFieldTypeString, Alias: NIMSResource, Length: 150 )
NIMSCategory (Type: esriFieldTypeString, Alias: NIMSCategory, Length: 50 )
NIMSKind (Type: esriFieldTypeString, Alias: NIMSKind, Length: 50 )
NIMSType (Type: esriFieldTypeString, Alias: NIMSType, Length: 50 )
NIMSDiscipline (Type: esriFieldTypeString, Alias: NIMSDiscipline, Length: 150 )
NIMSResourceID (Type: esriFieldTypeGUID, Alias: NIMSResourceID, Length: 78 )
NIMSCategoryID (Type: esriFieldTypeGUID, Alias: NIMSCategoryID, Length: 78 )
NIMSKindID (Type: esriFieldTypeGUID, Alias: NIMSKindID, Length: 78 )
NIMSTypeID (Type: esriFieldTypeGUID, Alias: NIMSTypeID, Length: 78 )
NIMSDisciplineID (Type: esriFieldTypeGUID, Alias: NIMSDisciplineID, Length: 78 )
MRPCatalogType (Type: esriFieldTypeString, Alias: MRPCatalogType, Length: 200 )
Longitude (Type: esriFieldTypeDouble, Alias: Longitude)
Latitude (Type: esriFieldTypeDouble, Alias: Latitude)
POCLastName (Type: esriFieldTypeString, Alias: POCLastName, Length: 400 )
POCFirstName (Type: esriFieldTypeString, Alias: POCFirstName, Length: 400 )
POCEmail (Type: esriFieldTypeString, Alias: POCEmail, Length: 255 )
POCPhone (Type: esriFieldTypeString, Alias: POCPhone, Length: 2147483647 )
EMACLastName (Type: esriFieldTypeString, Alias: EMACLastName, Length: 400 )
EMACFirstName (Type: esriFieldTypeString, Alias: EMACFirstName, Length: 400 )
EMACEmail (Type: esriFieldTypeString, Alias: EMACEmail, Length: 255 )
EMACPhone (Type: esriFieldTypeString, Alias: EMACPhone, Length: 2147483647 )
xyLocation (Type: esriFieldTypeGeometry, Alias: xyLocation)
EstimatedFixedCost (Type: esriFieldTypeDouble, Alias: EstimatedFixedCost)
EstimatedtAverageDailyRate (Type: esriFieldTypeDouble, Alias: EstimatedtAverageDailyRate)
CostNotes (Type: esriFieldTypeString, Alias: CostNotes, Length: 2147483647 )
URL (Type: esriFieldTypeString, Alias: URL, Length: 112 )
CurrentMission (Type: esriFieldTypeString, Alias: CurrentMission, Length: 400 )
CurrentMissionLocation (Type: esriFieldTypeString, Alias: CurrentMissionLocation, Length: 400 )
CurrentMissionStartDate (Type: esriFieldTypeDate, Alias: CurrentMissionStartDate, Length: 36 )
CurrentMissionEndDate (Type: esriFieldTypeDate, Alias: CurrentMissionEndDate, Length: 36 )
CurrentMissionCosts (Type: esriFieldTypeDouble, Alias: CurrentMissionCosts)
State (Type: esriFieldTypeString, Alias: State, Length: 2 )
ESRI_OID (Type: esriFieldTypeOID, Alias: ESRI_OID)