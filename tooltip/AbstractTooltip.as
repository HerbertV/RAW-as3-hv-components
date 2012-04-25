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
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import as3.hv.components.AbstractComponent;
	
	// =========================================================================
	// Abstract Class AbstractTooltip
	// =========================================================================
	// Base for all Tooltips
	//
	public class AbstractTooltip
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
		protected var myFillColor:uint = 0x888888;
		protected var myFillAlpha:int = 100;
		
		protected var myOutlineColor:uint = 0xFFFFFF;
		protected var myOutlineAlpha:int = 100;
		
		protected var myTextColor:uint = 0x000000;
		
		// delay and timer vars for showing/hiding the tooltip
		protected var delayShow:int = 0;
		protected var delayAutoHide:int = -1;
		
		protected var timerShow:int = 0;
		protected var timerAutoHide:int = 0;
		
		/**
		 * =====================================================================
		 * Constructor
		 * =====================================================================
		 */
		public function AbstractTooltip():void
		{
			super();
			
			// to prevent mouse events 
			this.mouseEnabled = false;
			this.mouseChildren = false;
		}
		
		
		// =====================================================================
		// FUNCTIONS
		// =====================================================================
				
		
		// =====================================================================
		// EVENTS
		// =====================================================================
		
		/**
		 * ---------------------------------------------------------------------
		 * enterFrameHandler
		 * ---------------------------------------------------------------------
		 * 
		 */
		protected function enterFrameHandler(event:Event):void
		{
			if( this.timerShow > 0 ) 
			{
				this.timerShow--;
				return;
			} 
			
			(this as ITooltip).align();
			this.visible = true;
				
			// autohide
			if( this.delayAutoHide > 0 ) 
			{
				if( this.timerAutoHide > 0 ) {
					this.timerAutoHide--;
				} else {
					(this as ITooltip).hide();
				}
			}
		}
		
		
		/**
		 * ---------------------------------------------------------------------
		 * mouseMoveHandler
		 * ---------------------------------------------------------------------
		 * 
		 */
		protected function mouseMoveHandler(event:MouseEvent):void
		{
			//resete autohide timer
			this.timerAutoHide = this.delayAutoHide * stage.frameRate;
		}
		
	}
}