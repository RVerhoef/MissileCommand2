package 
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	
	/**
	 * ...
	 * @author Rob
	 */
	public class Game extends Sprite
	{
		//assets
		private var background:Ground;
		private var city:sCircle;
		
		//Arrays
		private var cities:Array = [];
		
		//scripts
		private var enemyMissile: Enemy;
		
		//integers
		private var totalCities:int = 6;
	
	public function Game()
	{
		//adds the background to the game
		background = new Ground();
		background.x = 100;
		background.y = 250;
		addChild(background);
		
		//adds the cities to the game
		function spawnCity()
		{
			var city : sCircle = new sCircle();
			city.x = Math.random() * stage.stageWidth;
			city.y = Math.random() * stage.stageHeight;
			addChild(city);
			city.push(sCircle);
		
		}
		
		for (var i : int = 0; i < totalCities; i++ )
		{
			spawnCity();
		}
		
		}
		
	}
	
}