

var findAnagrams = function(s, p) {
    var map = {};
    var result = [];
    var slideWindow = {};

    // build a counter hash of smaller string
    for(var i = 0; i < p.length; i++){
        map[p[i]] = map[p[i]] ? map[p[i]] + 1 : 1;
    }

    // start 2 pointers at zero
    var left = 0;
    var right = 0;
    // while the window is smaller than string 2
    while(right < s.length){
      // if the character on the right edge is in string2
      if(map[s.charAt(right)]){
        // if slidewindow contains the chracter at right
        // and there is only one copy of the chracter on the right in string2
          if(slideWindow[s.charAt(right)] && map[s.charAt(right)] === 1){
            // we update left to be equal to either slidewindow of right or left, whichever is greater
            left = Math.max(slideWindow[s.charAt(right)], left);
          }
          // if the size of the window is the length of string2
          if(right - left + 1 === p.length){
            // we add
            result.push(left);
            left++;
          }
      }else{
          left = right + 1;
          slideWindow = {};
      }
      // the core of sliding window: need to save next index to current key,
      // so we can leverage it whenever we meet this key again in the future.
      slideWindow[s.charAt(right)] = right + 1;
      right++;
    }
    return result;
};
