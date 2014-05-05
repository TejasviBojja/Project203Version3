package cmpe203.project.MyTacks.views;
import com.yammer.dropwizard.views.View;

public class AddTileView extends View {

	private final String boardName;
	public AddTileView(String boardName){
		super("/AddTile.ftl");
		this.boardName=boardName;
	}

	public String getBoardName(){
		return boardName;
	}


}
