.class public Lcom/badlogic/gdx/utils/LongMap$Entries;
.super Lcom/badlogic/gdx/utils/LongMap$MapIterator;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/LongMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/utils/LongMap$MapIterator<",
        "TV;>;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry<",
        "TV;>;>;",
        "Ljava/util/Iterator<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private entry:Lcom/badlogic/gdx/utils/LongMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/LongMap$Entry<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    new-instance p1, Lcom/badlogic/gdx/utils/LongMap$Entry;

    invoke-direct {p1}, Lcom/badlogic/gdx/utils/LongMap$Entry;-><init>()V

    iput-object p1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->hasNext:Z

    return v0

    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/LongMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    return-object p0
.end method

.method public next()Lcom/badlogic/gdx/utils/LongMap$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entry<",
            "TV;>;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->hasNext:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v0, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iput-object v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    aget-wide v2, v0, v2

    iput-wide v2, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->map:Lcom/badlogic/gdx/utils/LongMap;

    iget-object v1, v1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->nextIndex:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->currentIndex:I

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->findNextIndex()V

    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap$Entries;->entry:Lcom/badlogic/gdx/utils/LongMap$Entry;

    return-object v0

    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "#iterator() cannot be used nested."

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->next()Lcom/badlogic/gdx/utils/LongMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->remove()V

    return-void
.end method

.method public bridge synthetic reset()V
    .locals 0

    invoke-super {p0}, Lcom/badlogic/gdx/utils/LongMap$MapIterator;->reset()V

    return-void
.end method
