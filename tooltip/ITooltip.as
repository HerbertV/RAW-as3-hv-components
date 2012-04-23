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
package as3.hv.components.tooltip
{

	// =========================================================================
	// Interface ITooltip
	// =========================================================================
	// Interface for all Tooltip Components (SWC)
	// based on AbstractProgressSymbol
	//
	public interface ITooltip
	{
	
		// =====================================================================
		// FUNCTIONS
		// =====================================================================

		/**
		 * ---------------------------------------------------------------------
		 * setLabel
		 * ---------------------------------------------------------------------
		 * Sets the label text
		 *
		 * @param lbl		text
		 */
		function setLabel(lbl:String):void;
		
		/**
		 * ---------------------------------------------------------------------
		 * showTooltip
		 * ---------------------------------------------------------------------
		 * prepares the tooltip to be shown.
		 * add enterFrameHandler and mouseMoveHandler from AbstractTooltip here.
		 *
		 *
		 * @param dShow		Delay in Secounds after the tooltip is shown.
		 *					If it is 0 the tooltip is shown immediately.
		 * @param dHide		Delay in Secounds after the tooltip is hiddden.
		 *					Default is -1, which means there is no autohide.
		 */
		function showTooltip(
				dShow:int=0,
				dHide:int=-1
			):void;
		
		
		/**
		 * ---------------------------------------------------------------------
		 * align
		 * ---------------------------------------------------------------------
		 * alignment code, to switch postion relative to the cursor,
		 * if the tooltip is shown near a stage border.
		 */
		function align():void;
		
		
		/**
		 * ---------------------------------------------------------------------
		 * hide
		 * ---------------------------------------------------------------------
		 * hides the tooltip
		 * remove enterFrameHandler and mouseMoveHandler from AbstractTooltip 
		 * here.
		 */
		function hide():void;
		
		
	}
}