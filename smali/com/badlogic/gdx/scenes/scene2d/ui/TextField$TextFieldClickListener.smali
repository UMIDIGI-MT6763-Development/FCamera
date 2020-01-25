.class public Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;
.super Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;
.source "TextField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextFieldClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public clicked(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FF)V
    .locals 2

    invoke-virtual {p0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->getTapCount()I

    move-result p1

    rem-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    :cond_0
    const/4 p3, 0x2

    if-ne p1, p3, :cond_1

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p3, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->wordUnderCursor(F)[I

    move-result-object p2

    iget-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p3, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->setSelection(II)V

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    :cond_2
    return-void
.end method

.method protected goEnd(Z)V
    .locals 1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void
.end method

.method protected goHome(Z)V
    .locals 1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v0, 0x0

    iput v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void
.end method

.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 9

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    iput-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object p1

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eq p1, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->ctrl()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->passwordMode:Z

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    const/16 v3, 0x85

    if-eqz p1, :cond_8

    const/16 p1, 0x32

    if-ne p2, p1, :cond_3

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste()V

    move p1, v1

    goto :goto_1

    :cond_3
    move p1, v0

    :goto_1
    const/16 v4, 0x1f

    if-eq p2, v4, :cond_7

    if-ne p2, v3, :cond_4

    goto :goto_3

    :cond_4
    const/16 v4, 0x34

    if-eq p2, v4, :cond_6

    const/16 v4, 0x43

    if-ne p2, v4, :cond_5

    goto :goto_2

    :cond_5
    const/16 v4, 0x1d

    if-ne p2, v4, :cond_9

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectAll()V

    return v1

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cut()V

    return v1

    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    return v1

    :cond_8
    move p1, v0

    :cond_9
    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v4

    const/16 v5, 0x84

    const/4 v6, 0x3

    const/16 v7, 0x16

    const/16 v8, 0x15

    if-eqz v4, :cond_f

    if-ne p2, v3, :cond_a

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->paste()V

    :cond_a
    const/16 v3, 0x70

    if-ne p2, v3, :cond_b

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->copy()V

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete()I

    :cond_b
    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v3, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-ne p2, v8, :cond_c

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    move p1, v1

    goto :goto_4

    :cond_c
    if-ne p2, v7, :cond_d

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    move p1, v1

    goto :goto_4

    :cond_d
    if-ne p2, v6, :cond_e

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goHome(Z)V

    goto :goto_4

    :cond_e
    if-ne p2, v5, :cond_13

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goEnd(Z)V

    :goto_4
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iput-boolean v1, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    goto :goto_5

    :cond_f
    if-ne p2, v8, :cond_10

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    move p1, v1

    :cond_10
    if-ne p2, v7, :cond_11

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, v1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->moveCursor(ZZ)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    move p1, v1

    :cond_11
    if-ne p2, v6, :cond_12

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goHome(Z)V

    iget-object v3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    :cond_12
    if-ne p2, v5, :cond_13

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->goEnd(Z)V

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->clearSelection()V

    :cond_13
    :goto_5
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v3, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v0, v4}, Lcom/badlogic/gdx/math/MathUtils;->clamp(III)I

    move-result v0

    iput v0, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-eqz p1, :cond_14

    invoke-virtual {p0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->scheduleKeyRepeatTask(I)V

    :cond_14
    return v1

    :cond_15
    :goto_6
    return v0
.end method

.method public keyTyped(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;C)Z
    .locals 11

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/16 p1, 0xd

    if-eq p2, p1, :cond_1

    packed-switch p2, :pswitch_data_0

    const/16 v1, 0x20

    if-ge p2, v1, :cond_1

    return v0

    :cond_1
    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->getKeyboardFocus()Lcom/badlogic/gdx/scenes/scene2d/Actor;

    move-result-object v1

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    if-eq v1, v2, :cond_2

    goto/16 :goto_b

    :cond_2
    const/16 v1, 0x9

    const/16 v2, 0xa

    const/4 v3, 0x1

    if-eq p2, v1, :cond_3

    if-ne p2, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->focusTraversal:Z

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-static {}, Lcom/badlogic/gdx/scenes/scene2d/utils/UIUtils;->shift()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->next(Z)V

    goto/16 :goto_a

    :cond_4
    const/16 v1, 0x7f

    if-ne p2, v1, :cond_5

    move v1, v3

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_0
    const/16 v4, 0x8

    if-ne p2, v4, :cond_6

    move v4, v3

    goto :goto_1

    :cond_6
    move v4, v0

    :goto_1
    if-eq p2, p1, :cond_8

    if-ne p2, v2, :cond_7

    goto :goto_2

    :cond_7
    move p1, v0

    goto :goto_3

    :cond_8
    :goto_2
    move p1, v3

    :goto_3
    if-eqz p1, :cond_9

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->writeEnters:Z

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->onlyFontChars:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->style:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldStyle;->font:Lcom/badlogic/gdx/graphics/g2d/BitmapFont;

    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->hasGlyph(C)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    move v2, v0

    goto :goto_5

    :cond_b
    :goto_4
    move v2, v3

    :goto_5
    if-nez v4, :cond_d

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    move v5, v0

    goto :goto_7

    :cond_d
    :goto_6
    move v5, v3

    :goto_7
    if-nez v2, :cond_e

    if-eqz v5, :cond_16

    :cond_e
    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    if-eqz v6, :cond_f

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->delete(Z)I

    move-result v0

    iput v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    goto/16 :goto_8

    :cond_f
    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-lez v4, :cond_10

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v8, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    sub-int/2addr v8, v3

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v8, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v9, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v10, v9, -0x1

    iput v10, v8, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v6, 0x0

    iput v6, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->renderOffset:F

    :cond_10
    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v4, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v4, v4, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_11

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v7, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v7, v7, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    invoke-virtual {v6, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v6, v6, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/2addr v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    :cond_11
    :goto_8
    if-eqz v2, :cond_15

    if-nez v5, :cond_15

    if-nez p1, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->filter:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {v0, v1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldFilter;->acceptChar(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)Z

    move-result v0

    if-nez v0, :cond_12

    return v3

    :cond_12
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->withinMaxLength(I)Z

    move-result v0

    if-nez v0, :cond_13

    return v3

    :cond_13
    if-eqz p1, :cond_14

    const-string p1, "\n"

    goto :goto_9

    :cond_14
    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    :goto_9
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iget-object v2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v2, v2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->insert(ILjava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->text:Ljava/lang/String;

    :cond_15
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->updateDisplayText()V

    :cond_16
    :goto_a
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->listener:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-interface {p1, v0, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldListener;->keyTyped(Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;C)V

    :cond_17
    return v3

    :cond_18
    :goto_b
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public keyUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    const/4 p1, 0x1

    return p1
.end method

.method protected scheduleKeyRepeatTask(I)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {v0}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->isScheduled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->keycode:I

    if-eq v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    iput p1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->keycode:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;->cancel()V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTask:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$KeyRepeatTask;

    sget v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatInitialTime:F

    sget v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyRepeatTime:F

    invoke-static {p1, v0, v1}, Lcom/badlogic/gdx/utils/Timer;->schedule(Lcom/badlogic/gdx/utils/Timer$Task;FF)Lcom/badlogic/gdx/utils/Timer$Task;

    :cond_1
    return-void
.end method

.method protected setCursorPosition(FF)V
    .locals 2

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->lastBlink:J

    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursorOn:Z

    invoke-virtual {p2, p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->letterUnderCursor(F)I

    move-result p1

    iput p1, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    return-void
.end method

.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-nez p4, :cond_1

    if-eqz p5, :cond_1

    return v0

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->disabled:Z

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    return p4

    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    iput p2, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->getStage()Lcom/badlogic/gdx/scenes/scene2d/Stage;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/Stage;->setKeyboardFocus(Lcom/badlogic/gdx/scenes/scene2d/Actor;)V

    :cond_3
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget-object p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->keyboard:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;

    invoke-interface {p1, p4}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$OnscreenKeyboard;->show(Z)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iput-boolean p4, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    return p4
.end method

.method public touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchDragged(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFI)V

    invoke-virtual {p0, p2, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->setCursorPosition(FF)V

    return-void
.end method

.method public touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v0, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->selectionStart:I

    iget-object v1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    iget v1, v1, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->cursor:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField$TextFieldClickListener;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/badlogic/gdx/scenes/scene2d/ui/TextField;->hasSelection:Z

    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/badlogic/gdx/scenes/scene2d/utils/ClickListener;->touchUp(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)V

    return-void
.end method
