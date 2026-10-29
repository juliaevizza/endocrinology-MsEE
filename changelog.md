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


