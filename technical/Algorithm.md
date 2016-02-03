First, we start with a brief description of the problems developed in a recommender system, and the existing algorithms to solve it. Then, we describe our innovative algorithm for preference elicitation.

# Recommender systems via collaborative filtering

Let us assume that we have $n$ users which have rated $m$ works in the database. Every user rates only a fraction of all items, and we would like to know which items to recommend to a certain user. This problem is called *collaborative filtering*.

Thus we have a matrix $R$ such that $r_{ui}$ denotes the rating of user $u$ over work $i$, if specified. As a lot of entries are missing, the matrix is *sparse*.

For example, on Mangaki, $n = 1.8k$ users, $m = 14k$ works and the number of specified entries in the matrix is 270k. So we only have access to 1% of all entries and we would like to guess the remaining ones. This problem is called *matrix completion*.

## KNN: $k$-nearest neighbors

We implemented this algorithm for our recommendations.

- Compute similrity score between susers
- Determinee $k$ nearest neighbors of a certain user $u$
- Recommend to him what they liked that he did not see.

The similarity score is the dot product of the ratings, where 1 stands for like and -1 stands for dislike. Thus, any agreement over a work (like/like or dislike/dislike) increases the score, while a disagreement (like/dislike) decreases it.

All our algorithms are compared using cross-validation.

## SVD: singular value decomposition

This is another algorithm for matrix completion. We used the implementation provided in the open source Python library scikit-learn for machine learning.

# Adaptive testing for preference elicitation

For which works should we ask a newcomer “Did you like this movie?” in order to build his profile efficiently?

- Items should be **popular**, in order to be known by the user, so he can provide a rating;
- Items should be **controversial**, because for example, the fact that you liked *Star Wars* does not provide a lot of information about your tastes.

Our idea is to find items that bisect the best the userbase into three sets of roughly the same probability mass.

Example:
