.class Lcom/sonymobile/home/util/PagedList$1;
.super Ljava/lang/Object;
.source "PagedList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/util/PagedList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# instance fields
.field elementIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TV;>;"
        }
    .end annotation
.end field

.field final pageIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/ArrayList",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/home/util/PagedList;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/util/PagedList;)V
    .locals 1

    .prologue
    .line 342
    .local p0, "this":Lcom/sonymobile/home/util/PagedList$1;, "Lcom/sonymobile/home/util/PagedList.1;"
    iput-object p1, p0, Lcom/sonymobile/home/util/PagedList$1;->this$0:Lcom/sonymobile/home/util/PagedList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->this$0:Lcom/sonymobile/home/util/PagedList;

    # getter for: Lcom/sonymobile/home/util/PagedList;->mPages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sonymobile/home/util/PagedList;->access$000(Lcom/sonymobile/home/util/PagedList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->pageIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 350
    .local p0, "this":Lcom/sonymobile/home/util/PagedList$1;, "Lcom/sonymobile/home/util/PagedList.1;"
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->pageIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->pageIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 354
    :cond_1
    const/4 v0, 0x0

    .line 357
    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    goto :goto_1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lcom/sonymobile/home/util/PagedList$1;, "Lcom/sonymobile/home/util/PagedList.1;"
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->pageIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->pageIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    goto :goto_0

    .line 366
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 369
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/util/PagedList$1;->elementIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 374
    .local p0, "this":Lcom/sonymobile/home/util/PagedList$1;, "Lcom/sonymobile/home/util/PagedList.1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
