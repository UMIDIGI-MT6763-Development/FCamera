.class public Lcom/badlogic/gdx/utils/PooledLinkedList;
.super Ljava/lang/Object;
.source "PooledLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field

.field private head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field

.field private iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pool:Lcom/badlogic/gdx/utils/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Pool<",
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private size:I

.field private tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/PooledLinkedList$Item<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    new-instance v0, Lcom/badlogic/gdx/utils/PooledLinkedList$1;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1, p1}, Lcom/badlogic/gdx/utils/PooledLinkedList$1;-><init>(Lcom/badlogic/gdx/utils/PooledLinkedList;II)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Pool;->obtain()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object p1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object p1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object p1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, p1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    return-void
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter()V

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/PooledLinkedList;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public iter()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-void
.end method

.method public iterReverse()V
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-object v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->payload:Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->iter:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-object v0
.end method

.method public remove()V
    .locals 5

    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->pool:Lcom/badlogic/gdx/utils/Pool;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Pool;->free(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v1, v0, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget-object v2, v2, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->curr:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iget v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->size:I

    if-nez v4, :cond_1

    iput-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-void

    :cond_1
    iget-object v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-ne v0, v4, :cond_2

    iput-object v3, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v1, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->head:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-void

    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    if-ne v0, v4, :cond_3

    iput-object v3, v2, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/PooledLinkedList;->tail:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-void

    :cond_3
    iput-object v1, v2, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->next:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    iput-object v2, v1, Lcom/badlogic/gdx/utils/PooledLinkedList$Item;->prev:Lcom/badlogic/gdx/utils/PooledLinkedList$Item;

    return-void
.end method
