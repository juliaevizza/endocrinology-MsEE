# November 3rd, evening work session 

Today, I began outlining some sources in querying.jl. I have no idea how I am going to go about scraping, but scheduled an OH with Pablo and Juheon to learn how they go about it.

I found a couple great sources, one with what I think is a comprehensive list of endocrine receptors (will need to look at the data visualizaiton and see what it actually contains...) and some databases with receptor specifc data for drug-like molecule interactions! I even saw some kd values which is a huge relief. I was beginning to game plan generating a large amount of synthetic data... which I am not ready to do yet. I would love to add that later though. I am meeting with Emma tomorrow to talk about my project and see if she is interested in helping source datasets, so I updated my WIP progress slides. 

I am also finally wrapping my head around the actual training process. The first rendition will use frozen embeddings and train using the performance of thsoe frozen embeddings. THEN I will train a version where a few of the top layers of the embeddings are unfrozen and compare the model's performance. The training loop is a still a little hard for me to conceptualize, but I am getting there. My current understanding is that the MLP is a matrix (multi layer) that contains weights. I am pretty sure this matrix is then multiplied with the embedding to produce a result? Then the result is assess. I am still working through understanding how the result is actually assessed. 

As the model "trains", the weights of that matrix are adjusted (using things like gradient descent to the optimal value for performance) as the model rewards and whips itself for good and bad performance. The methods of reward and whipping can vary and I am pretty sure that the variation is what makes it an MLP versus something else? I am not sure exactly how the MLP rewards/whips. Once the model is trained (martix is well informed), the model can train and assess new embeddings it has never seen before.

I am feeling weird about working on stuff I have never learned about/never seen ever before. I am feeling good about getting my footing, but still a little uncomfortable talking about it. I need to find new methods of communicating and presenting infromation that I am not fully certain about and clearly delineate what I am positive about / otherwise, especially with this project. For now, I know I am really uncertain about how the MLP works! That will be my next reading, from Pranam's textbook. 

# October 29th, evening work session 

Today, I began adapting Rosie (@PBG)'s simple notebook for embedding and training with an MLP. Rosie's notebook does not have fine tuning integrated. Her next notebook I will look at does unfreeze the embeddings and fine tunes on the data set. This will be my methodology for fine tuning ESM-2 and ChemBERTa. These embeddings will be tuned (as well as the other embeddings that I concetenate them with) as the epoche process occurs. The MLP will slightly adjust its vector weights and learn from how its performance changes. It scores performance because of splitting. 

Splitting the data into train, test, and val enables this learning process. As the model changes its weights, it scores itself on test and analyzes its DELTAperformance. (my understanding of this, which is currently an over generalization)

This project is revealing itself to me to do a database curation problem. The implementation of the model will actually be very straight forward with Rosie's code. The tricky part will be building a rich data base for it to learn on.

## Ideas for enrichment:

1) Loosen what qualifies as an endocrine disruptor to endocrine engagers

Anything that engages with an endocrine receptor could be an endocrine disruptors. "Disruptor" is a socially constructed term for nonendonegenous structures. What we are really interested in is anything that binds with an endocrine receptor. Including natural hormones!

Beyond natural hormones, known inhibitors for medical treatment are another analog. We don't qualify them as disruptor because they are typically gender/metabolic affirming care, but these will be another avenue to find endocrine engagers.

The immune system!! Thank you Biomedical Engineering for Women's health seminar... The immune system is full of feautures (with corresponding protein signalling receptors) effected by hormones that might not be listed under traditional endocrine research.

Known endocrine disruptors should be sourced from ALL OVER THE WORLD. Defaulting to US data will debilitate this. https://edlists.org/the-ed-lists

These will almost certainly be a mix of disruptor validated against receptors and not. I think it could be great if we could build a sub data base of these docked on a variety of receptors to see if we can detect which receptor is being disrupted....

Consider if there is anything we want to model computationally that we suspect may interact but don't have proof of yet...  

2) The elusive PTM data

This is a particuraly tricky data set to curate, but I think it could be worth including if we can find anything, even if in most rows it is a NaN/exists factor. Given the size of hormones, a PTM on a hromone 

Depending on the size of our database... It could be worth folding them and concatenating a pdb representation (are pdb's tractable? maybe not....)

3) Receptor data

This is a very half baked thought still... But maybe things like cell surface density, numbers of known conformations... 


