/*
 *  __  __      
 * /\ \/\ \  __________   
 * \ \ \_\ \/_______  /\   
 *  \ \  _  \  ____/ / /  
 *   \ \_\ \_\ \ \/ / / 
 *    \/_/\/_/\ \ \/ /  
 *             \ \  /
 *              \_\/
 *
 * -----------------------------------------------------------------------------
 * @author: Herbert Veitengruber 
 * @version: 1.0.0
 * -----------------------------------------------------------------------------
 *
 * Copyright (c) 2010-2012 Herbert Veitengruber 
 *
 * Licensed under the MIT license:
 * http://www.opensource.org/licenses/mit-license.php
 */
package as3.hv.components.progress
{
	
	import as3.hv.components.AbstractComponent;
	
	// =========================================================================
	// Abstract Class AbstractProgressSymbol
	// =========================================================================
	// Base for all my Progress Symbols
	//
	public class AbstractProgressSymbol
			extends AbstractComponent 
	{
		
		// =====================================================================
		// CONSTANTS
		// =====================================================================
		
		// Class version
		public static const VERSION:String = "1.0.0";
		
		
		// =====================================================================
		// Variables 
		// =====================================================================
		// Component (SWC) parameters internal representations
		// just used for preventing the default value bug in CS3
		protected var bgColor:uint = 0x000000;
		protected var bgAlpha:int = 100;
		
		protected var fgColor:uint = 0x00CC00;
		
		protected var idleAnimColor:uint = 0xFFFFFF;
		
		protected var pTextColor:uint = 0xFFFFFF;
		protected var sTextColor:uint = 0xFFFFFF;
		
		
		/**
		 * =====================================================================
		 * Constructor
		 * =====================================================================
		 */
		public function AbstractProgressSymbol():void
		{
			super();
		}
		
		// =====================================================================
		// FUNCTIONS
		// =====================================================================
		
	}
}