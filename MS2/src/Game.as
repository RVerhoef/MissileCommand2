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
		private var missiles:Array = [];
		
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
		
		for (var i : int = 0; i < totalCities; i++ )
		{
			spawnCity(i);
		}
		
		var testing:Missile = new Missile(cities[Math.floor(Math.random() * cities.length)]);
		addChild(testing);
		
	}
	
	//adds the cities to the game
	private function spawnCity(i:int):void
		{
			var city : sCircle = new sCircle();
			city.x = stage.stageWidth / 6 * i + 65; 
			city.y = 400;
			addChild(city);
			cities.push(city);
		}
		
	}
	
}