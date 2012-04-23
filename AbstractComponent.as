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
package as3.hv.components
{
	import flash.display.MovieClip;
	
	import fl.motion.Color;
	import flash.geom.ColorTransform;
	
	// =========================================================================
	// Abstract Class AbstractComponent
	// =========================================================================
	// Base for all swc components
	//
	public class AbstractComponent
			extends MovieClip 
	{
		
		// =====================================================================
		// CONSTANTS
		// =====================================================================
		
		// Class version
		public static const VERSION:String = "1.0.0";
		
		/**
		 * =====================================================================
		 * Constructor
		 * =====================================================================
		 */
		public function AbstractComponent():void
		{
			super();
		}
		
		// =====================================================================
		// FUNCTIONS
		// =====================================================================
		
		/**
		 * ---------------------------------------------------------------------
		 * recolorElement
		 * ---------------------------------------------------------------------
		 * This helper function can be called from all setters with color/alpha
		 * adjustments.
		 *
		 * @param mov 		The MovieClip that is recolored 
		 * @param newcolor 	The new color as uint(0x000000)
		 * @param newalpha  The new alpha value as int (von 0-100)
		 */
		protected function recolorElement(
				mov:MovieClip,
				newcolor:uint, 
				newalpha:int
			):void
		{
			var c:Color = new Color();
			c.color = newcolor;
			
			// first set the color
			// then set alpha
			// otherwise alpha is not set correct!
			mov.transform.colorTransform = new ColorTransform(
					0, 
					0, 
					0, 
					1, 
					c.redOffset, 	// red value
					c.greenOffset, 	// green value
					c.blueOffset, 	// blue value
					0
				);
				
			mov.alpha = newalpha/100;
		}
	}
}