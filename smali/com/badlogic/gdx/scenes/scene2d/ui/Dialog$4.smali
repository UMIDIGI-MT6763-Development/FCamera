.class Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "Dialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->key(ILjava/lang/Object;)Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

.field final synthetic val$keycode:I

.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;ILjava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iput p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$keycode:I

    iput-object p3, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public keyDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;I)Z
    .locals 1

    iget p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$keycode:I

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->val$object:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->result(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iget-boolean p1, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->cancelHide:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    invoke-virtual {p1}, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->hide()V

    :cond_0
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog$4;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;

    iput-boolean v0, p1, Lcom/badlogic/gdx/scenes/scene2d/ui/Dialog;->cancelHide:Z

    :cond_1
    return v0
.end method
