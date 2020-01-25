.class Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Window.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Window;-><init>(Ljava/lang/String;Lcom/badlogic/gdx/scenes/scene2d/ui/Window$WindowStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field edge:I

.field lastX:F

.field lastY:F

.field startX:F

.field startY:F

.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Window;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return p1
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return p1
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return p1
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return p1
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 4

    const/4 p1, 0x1

    const/4 p4, 0x0

    if-nez p5, :cond_b

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget p5, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->resizeBorder:I

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result v1

    iput p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isResizable:Z

    if-eqz v2, :cond_8

    int-to-float v2, p5

    cmpg-float v3, p2, v2

    if-gez v3, :cond_0

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_0
    sub-float v3, v0, v2

    cmpl-float v3, p2, v3

    if-lez v3, :cond_1

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_1
    cmpg-float v3, p3, v2

    if-gez v3, :cond_2

    iget v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_2
    sub-float v2, v1, v2

    cmpl-float v2, p3, v2

    if-lez v2, :cond_3

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    if-eqz v2, :cond_4

    add-int/lit8 p5, p5, 0x19

    :cond_4
    int-to-float p5, p5

    cmpg-float v2, p2, p5

    if-gez v2, :cond_5

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_5
    sub-float v2, v0, p5

    cmpl-float v2, p2, v2

    if-lez v2, :cond_6

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_6
    cmpg-float v2, p3, p5

    if-gez v2, :cond_7

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_7
    sub-float p5, v1, p5

    cmpl-float p5, p3, p5

    if-lez p5, :cond_8

    iget p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    or-int/lit8 p5, p5, 0x2

    iput p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_8
    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p5, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isMovable:Z

    if-eqz p5, :cond_9

    iget p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    if-nez p5, :cond_9

    cmpg-float p5, p3, v1

    if-gtz p5, :cond_9

    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {p5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getPadTop()F

    move-result p5

    sub-float/2addr v1, p5

    cmpl-float p5, p3, v1

    if-ltz p5, :cond_9

    const/4 p5, 0x0

    cmpl-float p5, p2, p5

    if-ltz p5, :cond_9

    cmpg-float p5, p2, v0

    if-gtz p5, :cond_9

    const/16 p5, 0x20

    iput p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    :cond_9
    iget-object p5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    if-eqz v0, :cond_a

    move v0, p1

    goto :goto_0

    :cond_a
    move v0, p4

    :goto_0
    iput-boolean v0, p5, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastX:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastY:F

    :cond_b
    iget p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    if-nez p2, :cond_d

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->isModal:Z

    if-eqz p2, :cond_c

    goto :goto_1

    :cond_c
    move p1, p4

    :cond_d
    :goto_1
    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 9

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getWidth()F

    move-result p1

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getHeight()F

    move-result p4

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinWidth()F

    move-result v2

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxWidth()F

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMinHeight()F

    move-result v3

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getMaxHeight()F

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v4

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    iget-boolean v5, v5, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->keepWithinStage:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-virtual {v5}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->getParent()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v5

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getRoot()Lcom/badlogic/gdx/scenes/scene2d/Group;

    move-result-object v6

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    sub-float v6, p2, v6

    iget v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    sub-float v7, p3, v7

    add-float/2addr v0, v6

    add-float/2addr v1, v7

    :cond_2
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    and-int/lit8 v6, v6, 0x8

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startX:F

    sub-float v6, p2, v6

    sub-float v8, p1, v6

    cmpg-float v8, v8, v2

    if-gez v8, :cond_3

    sub-float v6, v2, p1

    neg-float v6, v6

    :cond_3
    if-eqz v5, :cond_4

    add-float v8, v0, v6

    cmpg-float v8, v8, v7

    if-gez v8, :cond_4

    neg-float v6, v0

    :cond_4
    sub-float/2addr p1, v6

    add-float/2addr v0, v6

    :cond_5
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_8

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->startY:F

    sub-float v6, p3, v6

    sub-float v8, p4, v6

    cmpg-float v8, v8, v3

    if-gez v8, :cond_6

    sub-float v6, v3, p4

    neg-float v6, v6

    :cond_6
    if-eqz v5, :cond_7

    add-float v8, v1, v6

    cmpg-float v7, v8, v7

    if-gez v7, :cond_7

    neg-float v6, v1

    :cond_7
    sub-float/2addr p4, v6

    add-float/2addr v1, v6

    :cond_8
    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_b

    iget v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastX:F

    sub-float v6, p2, v6

    add-float v7, p1, v6

    cmpg-float v7, v7, v2

    if-gez v7, :cond_9

    sub-float v6, v2, p1

    :cond_9
    if-eqz v5, :cond_a

    add-float v2, v0, p1

    add-float/2addr v2, v6

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v7

    cmpl-float v2, v2, v7

    if-lez v2, :cond_a

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getWidth()F

    move-result v2

    sub-float/2addr v2, v0

    sub-float v6, v2, p1

    :cond_a
    add-float/2addr p1, v6

    :cond_b
    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->edge:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_e

    iget v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastY:F

    sub-float v2, p3, v2

    add-float v6, p4, v2

    cmpg-float v6, v6, v3

    if-gez v6, :cond_c

    sub-float v2, v3, p4

    :cond_c
    if-eqz v5, :cond_d

    add-float v3, v1, p4

    add-float/2addr v3, v2

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_d

    invoke-virtual {v4}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getHeight()F

    move-result v2

    sub-float/2addr v2, v1

    sub-float/2addr v2, p4

    :cond_d
    add-float/2addr p4, v2

    :cond_e
    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastX:F

    iput p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->lastY:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p3

    int-to-float p3, p3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    int-to-float p4, p4

    invoke-virtual {p2, p3, v0, p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->setBounds(FFFF)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Window$3;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Window;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Window;->dragging:Z

    return-void
.end method
