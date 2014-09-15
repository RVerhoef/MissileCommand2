package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Rob
	 */
	public class Missile extends Sprite
	{
		private var _stage;
		private var _target;
		private var _unitV:Array = [];
		
		public function Missile(target:sCircle) 
		{
			_target = target;
			var newmis:EnemyMissile = new EnemyMissile;
			addChild(newmis);
			
			calcTarget();
		}
		
		public function update():void
		{
			
		}
		
		private function calcTarget():void
		{
			var offset:Array = [];
			offset.push(_target.x - this.x, _target.y - this.y);
			
			var distance:Number;
			distance = Math.sqrt(offset[0] * offset[0] + offset[1] * offset[1]);
			
			_unitV.push(offset[0] / distance, offset[1] / distance);
			
		}
		
	}

}