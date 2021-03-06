package _01_Geometry.TwoDimensional;

import _01_Geometry.Interfaces.Vertex;
import _01_Geometry.ThreeDimensional.Vertex3D;

import java.util.IllegalFormatException;

public class Vertex2D implements Vertex{

    private double x;
    private double y;

    public Vertex2D(double x, double y){
        this.setX(x);
        this.setY(y);
    }

    public double getX() {
        return x;
    }

    private void setX(double x) {
        this.x = x;
    }

    public double getY() {
        return y;
    }

    private void setY(double y) {
        this.y = y;
    }

    @Override
    public double calculateDistance(Vertex2D other) {
        double squaredDistance = Math.pow((this.getX() - other.getX()),2) + Math.pow((this.getY() - other.getY()),2);
        return Math.sqrt(squaredDistance);
    }

    @Override
    public double calculateDistance(Vertex3D other) {
        double squaredDistance = Math.pow((this.getX() - other.getX()), 2) + Math.pow((this.getY() - other.getY()), 2) + Math.pow((0 - other.getZ()), 2);
        return Math.sqrt(squaredDistance);
    }

    @Override
    public String toString() {
        return String.format("[x: %.2f, y: %.2f]",this.x,this.y);
    }
}
