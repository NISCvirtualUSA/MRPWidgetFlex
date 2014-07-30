
///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2011-2014, G&H International Services Inc. All Rights Reserved
///////////////////////////////////////////////////////////////////////////////

package widgets.MRP_Widget
{

import mx.core.ClassFactory;

import spark.components.DataGroup;
import widgets.MRP_Widget.QueryResultItemRenderer;

// these events bubble up from the QueryResultItemRenderer
[Event(name="queryResultClick", type="flash.events.Event")]
[Event(name="queryResultMouseOver", type="flash.events.Event")]
[Event(name="queryResultMouseOut", type="flash.events.Event")]
[Event(name="linkResultClick", type="flash.events.Event")]

public class QueryResultDataGroup extends DataGroup
{
    public function QueryResultDataGroup()
    {
        super();

        this.itemRenderer = new ClassFactory(QueryResultItemRenderer);
    }
}

}
