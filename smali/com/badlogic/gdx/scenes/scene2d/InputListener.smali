.class public Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.super Ljava/lang/Object;
.source "InputListener.java"

# interfaces
.implements Lcom/badlogic/gdx/scenes/scene2d/EventListener;


# static fields
.field private static final tmpCoords:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/badlogic/gdx/math/Vector2;

    invoke-direct {v0}, Lcom/badlogic/gdx/math/Vector2;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    return-void
.end method

.method public exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V
    .locals 0

    return-void
.end method

.method public handle(Lcom/badlogic/gdx/scenes/scene2d/Event;)Z
    .locals 8

    instance-of v0, p1, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v3, p1

    check-cast v3, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type:[I

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->ordinal()I

    move-result v0

    aget p1, p1, v0

    packed-switch p1, :pswitch_data_0

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getListenerActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    invoke-virtual {v3, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->toCoordinates(Lcom/badlogic/gdx/scenes/scene2d/Actor;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener$1;->$SwitchMap$com$badlogic$gdx$scenes$scene2d$InputEvent$Type:[I

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getType()Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent$Type;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_1

    return v1

    :pswitch_0
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getCharacter()C

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z

    move-result p1

    return p1

    :pswitch_1
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result p1

    return p1

    :pswitch_2
    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getKeyCode()I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z

    move-result p1

    return p1

    :pswitch_3
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->exit(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return v1

    :pswitch_4
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getRelatedActor()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->enter(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFILcom/badlogic/gdx/scenes/scene2d/Actor;)V

    return v1

    :pswitch_5
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getScrollAmount()I

    move-result v1

    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Z

    move-result p1

    return p1

    :pswitch_6
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v0, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v0, v0, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {p0, v3, p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z

    move-result p1

    return p1

    :pswitch_7
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget p1, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object v1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v1, v1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v2

    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    return v0

    :pswitch_8
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return v0

    :pswitch_9
    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v4, p1, Lcom/badlogic/gdx/math/Vector2;->x:F

    sget-object p1, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->tmpCoords:Lcom/badlogic/gdx/math/Vector2;

    iget v5, p1, Lcom/badlogic/gdx/math/Vector2;->y:F

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getPointer()I

    move-result v6

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/InputEvent;->getButton()I

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public mouseMoved(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrolled(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 0

    return-void
.end method
