%function results = NPCR_and_UACI1( img_one , img_two , largest_allowed_val )
img_one=imread('b1.bmp');
img_two= s2;
[ row_one, col_one, height_one ] = size( img_one );
[ row_two, col_two, height_two ] = size( img_two );
if ( ( row_one ~= row_two ) || ( col_one ~= col_two ) || ( height_one ~= height_two ) )
error( 'input images have to be of same dimensions' );
end
class_one = class( img_one );
class_two = class( img_two );
if ( ~strcmp( class_one, class_two) )
    error( 'input images have to be of same data type');
end
%% Largest supported pixel value
if ( ~exist( 'largest_allowed_val', 'var') )
switch class_one
case 'uint16'
largest_allowed_val = 65535;
case 'uint8'
largest_allowed_val = 255;
case 'logical'
largest_allowed_val = 2;
otherwise
largest_allowed_val = max ( max(img_one(:), img_two(:) ) );
end
end
img_one = double( img_one(:));
img_two = double( img_two(:))
num_of_pix = numel( img_one );
%% NCPR Score
NPCR = sum( double( img_one(:) ~= img_two(:) ) ) / num_of_pix;
NPCR = round(NPCR,8)
%% UACI Score
A= abs( img_one(:) - img_two(:) );
UACI = sum(A) / (num_of_pix * largest_allowed_val);