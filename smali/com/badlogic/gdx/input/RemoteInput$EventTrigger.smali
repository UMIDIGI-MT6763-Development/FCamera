.class Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;
.super Ljava/lang/Object;
.source "RemoteInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/input/RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventTrigger"
.end annotation


# instance fields
.field keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

.field final synthetic this$0:Lcom/badlogic/gdx/input/RemoteInput;

.field touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iput-object p3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    iget-boolean v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v2, v2, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v2, v2, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    aput-boolean v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v4, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v4, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v5, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v3, v4, v5}, Lcom/badlogic/gdx/InputProcessor;->touchDragged(III)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v5, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/badlogic/gdx/InputProcessor;->touchUp(IIII)Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v1, v0, v3

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    iget-object v5, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v5, v5, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    invoke-interface {v0, v3, v4, v5, v1}, Lcom/badlogic/gdx/InputProcessor;->touchDown(IIII)Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v2, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget-char v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyChar:C

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/InputProcessor;->keyTyped(C)Z

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/InputProcessor;->keyUp(I)Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v1, v0, v2

    goto/16 :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->processor:Lcom/badlogic/gdx/InputProcessor;

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/InputProcessor;->keyDown(I)Z

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v1

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v1, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v1

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchX:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->x:I

    aput v4, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->touchY:[I

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    iget-object v4, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v4, v4, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->y:I

    aput v4, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v2, v0, v3

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->justTouched:Z

    :cond_4
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->type:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->isTouched:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->touchEvent:Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->pointer:I

    aput-boolean v1, v0, v3

    :cond_5
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    if-eqz v0, :cond_8

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v3

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    add-int/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v3

    :cond_6
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iput-boolean v2, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyJustPressed:Z

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->justPressedKeys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v2, v0, v3

    :cond_7
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v0, v0, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->type:I

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v3, v3, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    sub-int/2addr v3, v2

    iput v3, v0, Lcom/badlogic/gdx/input/RemoteInput;->keyCount:I

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->this$0:Lcom/badlogic/gdx/input/RemoteInput;

    iget-object v0, v0, Lcom/badlogic/gdx/input/RemoteInput;->keys:[Z

    iget-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;->keyEvent:Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    iget v2, v2, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->keyCode:I

    aput-boolean v1, v0, v2

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
