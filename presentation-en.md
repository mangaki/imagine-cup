\begin{center}
\includegraphics[width=0.5\linewidth]{mangaki}
\end{center}
\vspace{5mm}

\noindent
Mangaki is a manga/anime recommendation website: \url{http://mangaki.fr}.

#### Pitch

Everyone regularly ask themselves what movie, series or book they should watch next, according to their tastes. Mangaki wants to innovate access to culture by providing a unique user experience.

Innovation: Adaptive Testing for Personalized Recommendations {-}
=============================================================

In a typical recommendation website, a user rates a few anime (*Favorite / Like / Dislike / Neutral / Want to see / Will not see*) and the system provides suggestions of new works they might like. But newcomers usually have to rate **a lot** of items before they get satisfying recommendations.\bigskip

\noindent
What distinguishes Mangaki from other recommender systems is a Tinder-like **adaptive test** for newcomers, asking the user « ***Did you like these works?*** ». This welcome test enables Mangaki's algorithm to automatically select works that will bring the most information about the user's tastes. This makes it possible to provide relevant recommendations faster.

\begin{figure}[h]
\centering\includegraphics[width=0.9\linewidth]{decks}
\end{figure}

#### Demo

\url{http://mangaki.fr/static/demo.mp4}

Technical features {-}
==================

\noindent
Mangaki is written in Python and relies on the following open source technologies:

- the *Django* Web framework;
- the machine learning library *scikit-learn*.

\noindent
The code is entirely open source on \url{https://github.com/mangaki/mangaki}.

Main assets {-}
===========

- the welcome adaptive testing, relying on state-of-the-art algorithms from recent research ;
- the core can be adapted to other databases (books, comics, video games, etc.)
