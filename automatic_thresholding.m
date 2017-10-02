function [ T ] = automatic_thresholding(image, T0)
    T = randi([0,255]);
    while (T>=0)
        group1 = image(find(image>T));
        group2 = image(find(image<=T));
        S1 = sum(group1); 
        L1 = size(group1);
        S2 = sum(group2); 
        L2 = size(group2);
        m1 = S1/L1(1);
        m2 = S2/L2(1);
        t = T;
        T = 0.5*(m1+m2);
        T = round(T);
        if (isnan(T) == 1)
            T = automatic_thresholding(image,T0);
        end
        if (abs(T-t) <= T0)
            if (isnan(T) == 1)
                T = automatic_thresholding(image,T0);
            end
            break;
        end
    end
end