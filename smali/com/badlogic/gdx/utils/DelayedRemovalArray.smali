.class public Lcom/badlogic/gdx/utils/DelayedRemovalArray;
.super Lcom/badlogic/gdx/utils/Array;
.source "DelayedRemovalArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/Array<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private iterating:I

.field private remove:Lcom/badlogic/gdx/utils/IntArray;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    new-instance v0, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Lcom/badlogic/gdx/utils/Array;)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>(Ljava/lang/Class;)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;-><init>(ZI)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/Array;-><init>(ZILjava/lang/Class;)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>(Z[Ljava/lang/Object;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[TT;II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/utils/Array;-><init>(Z[Ljava/lang/Object;II)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/Array;-><init>([Ljava/lang/Object;)V

    new-instance p1, Lcom/badlogic/gdx/utils/IntArray;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/badlogic/gdx/utils/IntArray;-><init>(I)V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    return-void
.end method

.method private remove(I)V
    .locals 3

    iget-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    iget v0, v0, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2, v1}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    return-void

    :cond_0
    if-ge p1, v2, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, v1, p1}, Lcom/badlogic/gdx/utils/IntArray;->insert(II)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/DelayedRemovalArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/DelayedRemovalArray<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public begin()V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    return-void
.end method

.method public clear()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->clear()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 3

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    iget v1, v1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove:Lcom/badlogic/gdx/utils/IntArray;

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/IntArray;->pop()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->removeIndex(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "begin must be called before end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insert(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->insert(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid between begin/end."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pop()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->pop()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->removeIndex(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public removeRange(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_0

    :goto_0
    if-lt p2, p1, :cond_1

    invoke-direct {p0, p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeRange(II)V

    :cond_1
    return-void
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-lez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->remove(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->removeValue(Ljava/lang/Object;Z)Z

    move-result p1

    return p1
.end method

.method public reverse()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->reverse()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->set(ILjava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid between begin/end."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public shuffle()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->shuffle()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort()V
    .locals 2

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/Array;->sort()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid between begin/end."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid between begin/end."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public swap(II)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/badlogic/gdx/utils/Array;->swap(II)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid between begin/end."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public truncate(I)V
    .locals 1

    iget v0, p0, Lcom/badlogic/gdx/utils/DelayedRemovalArray;->iterating:I

    if-gtz v0, :cond_0

    invoke-super {p0, p1}, Lcom/badlogic/gdx/utils/Array;->truncate(I)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid between begin/end."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
