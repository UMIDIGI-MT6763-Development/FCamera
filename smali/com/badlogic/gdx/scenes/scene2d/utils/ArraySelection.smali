.class public Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;
.source "ArraySelection.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/badlogic/gdx/scenes/scene2d/utils/Selection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private array:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;"
        }
    .end annotation
.end field

.field private rangeSelect:Z


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/utils/Array;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    return-void
.end method


# virtual methods
.method public choose(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v0, v0, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-lez v0, :cond_6

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->multiple:Z

    if-eqz v0, :cond_6

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    const/16 v1, 0x3c

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Input;->isKeyPressed(I)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->getLastSelected()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, p1, v2}, Lcom/badlogic/gdx/utils/Array;->indexOf(Ljava/lang/Object;Z)I

    move-result p1

    if-le v0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v3, v0

    move v0, p1

    move p1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->snapshot()V

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedSet;->clear()V

    :cond_3
    :goto_1
    if-gt p1, v0, :cond_4

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/OrderedSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->fireChangeEvent()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->revert()V

    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->cleanup()V

    return-void

    :cond_6
    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/Selection;->choose(Ljava/lang/Object;)V

    return-void

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "item cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRangeSelect()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    return v0
.end method

.method public setRangeSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->rangeSelect:Z

    return-void
.end method

.method public validate()V
    .locals 4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->array:Lcom/badlogic/gdx/utils/Array;

    iget v1, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->clear()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->items()Lcom/badlogic/gdx/utils/OrderedSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/utils/OrderedSet;->iterator()Lcom/badlogic/gdx/utils/OrderedSet$OrderedSetIterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/badlogic/gdx/utils/Array;->contains(Ljava/lang/Object;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->required:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->selected:Lcom/badlogic/gdx/utils/OrderedSet;

    iget v1, v1, Lcom/badlogic/gdx/utils/OrderedSet;->size:I

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->set(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
