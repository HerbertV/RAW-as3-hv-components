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
	// =========================================================================
	// Interface IProgressSymbol
	// =========================================================================
	// Interface for all Progress Symbol Components (SWC)
	// based on AbstractProgressSymbol
	//
	public interface IProgressSymbol
	{
	
		// =====================================================================
		// FUNCTIONS
		// =====================================================================

		/**
		 * ---------------------------------------------------------------------
		 * init
		 * ---------------------------------------------------------------------
		 * Initializes the symbol, all elements are reset.
		 */
		function init():void;
		
		/**
		 * ---------------------------------------------------------------------
		 * setProgressTo
		 * ---------------------------------------------------------------------
		 * Set the Progress to a new state.
		 *
		 * @param percent	An int between 0-100
		 * @param msg		A status message if your Symbol is able to show one.
		 */
		function setProgressTo(
				percent:int, 
				msg:String
			):void;
		
		
		/**
		 * ---------------------------------------------------------------------
		 * hide
		 * ---------------------------------------------------------------------
		 * hide the symbol and stop also animations inside.
		 */
		function hide():void;
	}
}