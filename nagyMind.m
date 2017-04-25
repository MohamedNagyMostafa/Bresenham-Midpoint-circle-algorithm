function main()
	%midPoint(centerPointX, centerPointY, radius).
	%bresenham(centerPointX, centerPointY, radius).
end

function midPoint(xCenter, yCenter, radius)
    x = 0;
    y = radius;
        
    d = 1 - radius;

    while(x < y)
        x = x + 1;
        if(d < 0)
            d = d + 2 * x + 1;
        else
            y = y - 1;
            d = d + 2 *( x - y) + 1;
        end
        
        draw(xCenter, yCenter, x, y);
   
    end
end

function bresenham(xCenter, yCenter, radius)

    x = 0;
    y = radius;
    
    d = 3 - 2 * radius;
    
    while(x < y)
        draw(xCenter, yCenter, x, y);
        x = x + 1;
        if(d < 0)
            d = d + 4 * x + 6;
        else
            y = y - 1;
            d = d + 4 *( x - y) + 10;
        end
        
        draw(xCenter, yCenter, x, y);
        
        x=x+1;
    end
end

function draw(xCenter, yCenter, x, y)
    hold on
    plot(xCenter + x, yCenter + y, 'r*')
    plot(xCenter + x, yCenter - y, 'r*')
    plot(xCenter - x, yCenter + y, 'r*')
    plot(xCenter - x, yCenter - y, 'r*')
    plot(xCenter + y, yCenter + x, 'r*')
    plot(xCenter + y, yCenter - x, 'r*')
    plot(xCenter - y, yCenter + x, 'r*')
    plot(xCenter - y, yCenter - x, 'r*')
    hold off
end
