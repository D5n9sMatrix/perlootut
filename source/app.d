import std.csv : csvReader; import std.file : readText;
import std.algorithm : map;
import std.array : array;
import ggplotd.aes : aes;
import ggplotd.axes : xaxisLabel, yaxisLabel;
import ggplotd.ggplotd : GGPlotD, putIn;
import ggplotd.geom : geomPoint;


void main() 
{ 
    struct Diamond {
        double carat;
        string clarity;
        double price;
    }

    // Read the data
    auto diamonds = readText("test_files/diamonds.csv").csvReader!(Diamond)(
    ["carat","clarity","price"]);

    auto gg = diamonds.map!((diamond) => 
            // Map data to aesthetics (x, y and colour)
            aes!("x", "y", "colour", "size")(diamond.carat, diamond.price, diamond.clarity, 0.8))
        .array
        // Draw points
        .geomPoint.putIn(GGPlotD());
        
    // Axis labels
    gg = "Carat".xaxisLabel.putIn(gg);
    gg = "Price".yaxisLabel.putIn(gg);
    gg.save("diamonds.png");
}