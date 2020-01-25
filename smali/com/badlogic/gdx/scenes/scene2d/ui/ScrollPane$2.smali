.class Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;
.source "ScrollPane.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;-><init>(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$ScrollPaneStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public fling(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/high16 v0, 0x43160000    # 150.0f

    cmpl-float p4, p4, v0

    if-lez p4, :cond_0

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget v1, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    iput v1, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    iget-object p4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iput p2, p4, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityX:F

    invoke-virtual {p4, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V

    :cond_0
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v0

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p4, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTime:F

    iput p4, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    neg-float p3, p3

    iput p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->velocityY:F

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V

    :cond_1
    return-void
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/badlogic/gdx/scenes/scene2d/utils/ActorGestureListener;->handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->touchDown:Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->flingTimer:F

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public pan(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFFF)V
    .locals 0

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->resetFade()V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    sub-float/2addr p3, p4

    iput p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountX:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    iget p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    add-float/2addr p3, p5

    iput p3, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->amountY:F

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->clamp()V

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane$2;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/ScrollPane;->cancelTouchFocusedChild(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;)V

    return-void
.end method
