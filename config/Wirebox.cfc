<!-----------------------------------------------------------------------
********************************************************************************
Copyright Since 2005 ColdBox Framework by Luis Majano and Ortus Solutions, Corp
www.coldbox.org | www.luismajano.com | www.ortussolutions.com
********************************************************************************
Author   :  Luis Majano
Description :
    Your WireBox Configuration Binder
----------------------------------------------------------------------->
<cfcomponent output="false" hint="The default WireBox Injector configuration object" extends="coldbox.system.ioc.config.Binder">
<cfscript>
    
    /**
    * Configure WireBox, that's it!
    */
    function configure(){
        
        // The WireBox configuration structure DSL
        wireBox = {
            // Scope registration, automatically register a wirebox injector instance on any CF scope
            // By default it registeres itself on application scope
            scopeRegistration = {
                enabled = true,
                scope   = "application", // server, cluster, session, application
                key     = "wireBox"
            },

            // DSL Namespace registrations
            customDSL = {
                // namespace = "mapping name"
            },
            
            // Custom Storage Scopes
            customScopes = {
                // annotationName = "mapping name"
            },
            
            // Package scan locations
            scanLocations = [],
            
            // Stop Recursions
            stopRecursions = [],
            
            // Parent Injector to assign to the configured injector, this must be an object reference
            parentInjector = "",
            
            // Register all event listeners here, they are created in the specified order
            listeners = [
                // { class="", name="", properties={} }
            ]           
        };
        
        // Map Bindings below
        mapDirectory( packagePath="model.service" );
    }   
</cfscript>
</cfcomponent>