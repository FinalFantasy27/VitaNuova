%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
%      This file is part of the 'lilyglyphs' LaTeX package.              %
%                                ==========                              %
%                                                                        %
%              https://github.com/openlilylib/lilyglyphs                 %
%               http://www.openlilylib.org/lilyglyphs                    %
%                                                                        %
%  Copyright 2012-2020 Urs Liska and others, ul@openlilylib.org          %
%                                                                        %
%  'lilyglyphs' is free software: you can redistribute it and/or modify  %
%  it under the terms of the LaTeX Project Public License, either        %
%  version 1.3 of this license or (at your option) any later version.    %
%  You may find the latest version of this license at                    %
%               http://www.latex-project.org/lppl.txt                    %
%  more information on                                                   %
%               http://latex-project.org/lppl/                           %
%  and version 1.3 or later is part of all distributions of LaTeX        %
%  version 2005/12/01 or later.                                          %
%                                                                        %
%  This work has the LPPL maintenance status 'maintained'.               %
%  The Current Maintainer of this work is Urs Liska (see above).         %
%                                                                        %
%  This work consists of the files listed in the file 'manifest.txt'     %
%  which can be found in the 'license' directory.                        %
%                                                                        %
%  This program is distributed in the hope that it will be useful,       %
%  but WITHOUT ANY WARRANTY; without even the implied warranty of        %
%  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.                  %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This file defines a set of glyphs to be compiled in LilyPond %
%                                                              %
%   Beamed notes                                               %
%                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\version "2.17.5"

%%%%%%%%%%%%%%%%%%%%%%%
% Groups with two beams

%%lilyglyphs
% two beamed quavers with diagonal beam
%%protected
twoBeamedQuavers = {
  \override Beam#'damping = 0
  d'8[ e']
}

\markup { twoBeamedQuavers }
symbol = \twoBeamedQuavers
\include "score.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%
% Groups with three beams

%%lilyglyphs
% raise=-0.6
% scale=0.9
% three beamed quavers
%%protected
threeBeamedQuavers = {
  \override Beam #'positions = #'(1 . 1)
  e'8[ e' e']
}

\markup { threeBeamedQuavers }
symbol = \threeBeamedQuavers
\include "score.ily"

%%lilyglyphs
% three beamed quavers, second dotted
%%protected
threeBeamedQuaversI = {
  \override Beam #'positions = #'(1 . 1)
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1/8)
  e'8[ e'8. e'16]
}

\markup { threeBeamedQuaversI }
symbol = \threeBeamedQuaversI
\include "score.ily"

%%lilyglyphs
% three beamed quavers, first dotted
%%protected
threeBeamedQuaversII = {
  \override Beam #'positions = #'(1 . 1)
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1/12)
  e'8.[ e'16 e'8]
}

\markup { threeBeamedQuaversII }
symbol = \threeBeamedQuaversII
\include "score.ily"

%%lilyglyphs
% three beamed quavers, last dotted
%%protected
threeBeamedQuaversIII = {
  \override Beam #'positions = #'(1 . 1)
  \override Score.SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1/12)
  e'16[ e'8. e'8]
}

\markup { threeBeamedQuaversIII }
symbol = \threeBeamedQuaversIII
\include "score.ily"
