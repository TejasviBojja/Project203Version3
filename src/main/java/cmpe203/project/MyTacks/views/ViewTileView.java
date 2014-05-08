package cmpe203.project.MyTacks.views;

import java.util.ArrayList;
import java.util.List;

import cmpe203.project.MyTacks.domain.Tile;

import com.yammer.dropwizard.views.View;

public class ViewTileView extends View{
	
List<Tile> tile=new ArrayList<Tile>();
	
	
	public ViewTileView(List tile){
		super("/ViewTile.ftl");
		this.tile=tile;
	}


	public List<Tile> getTile() {
		return tile;
	}


	public void setTile(List<Tile> tile) { 	
		this.tile = tile;
	}

}
