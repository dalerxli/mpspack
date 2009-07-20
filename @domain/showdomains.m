function h = showdomains(dlist, opts)
% SHOWDOMAINS - plot all domains on current figure using a color for each
%
%  h=showdomains(dlist, opts) plots all domains on the current figure using
%  a color for each. opts is in optional structure identical to the options
%  structure in domains.plot
%
%  See also: domains/PLOT
%
% Copyright (C) 2008, 2009, Timo Betcke, Alex Barnett


if nargin<2, opts = []; end
h = [];
i = 0;
for d=dlist
  hd = d.plot(opts);
  % use binary RGB sequence...
  utils.monochrome(hd, [mod(floor(i/4),2), mod(floor(i/2),2), mod(i,2)]);
  h = [h; hd];
  i = i+1;
end
