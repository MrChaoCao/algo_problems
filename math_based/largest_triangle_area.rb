# You have a list of points in the plane. Return the area of the largest triangle that can be formed by any 3 of the points.

def largest_triangle_area(points)
    largest = 0

    points.each do |p1|
        points.each do |p2|
            next if p1 == p2
            points.each do |p3|
                next if p3 == p1 || p3 == p2
                temp = (p1[0]*p2[1] + p2[0]*p3[1] + p3[0]*p1[1] - p3[0]*p2[1] - p2[0]*p1[1] - p1[0]*p3[1]) / 2.0
                largest = temp if temp > largest
            end
        end
    end

   largest
end
