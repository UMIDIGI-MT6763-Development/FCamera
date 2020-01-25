.class Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;
.super Lcom/badlogic/gdx/scenes/scene2d/InputListener;
.source "List.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/badlogic/gdx/scenes/scene2d/ui/List;-><init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List$ListStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/scenes/scene2d/ui/List;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/InputListener;-><init>()V

    return-void
.end method


# virtual methods
.method public touchDown(Lcom/badlogic/gdx/scenes/scene2d/InputEvent;FFII)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p4, :cond_0

    if-eqz p5, :cond_0

    return p1

    :cond_0
    iget-object p2, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    iget-object p2, p2, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->selection:Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;

    invoke-virtual {p2}, Lcom/badlogic/gdx/scenes/scene2d/utils/ArraySelection;->isDisabled()Z

    move-result p2

    if-eqz p2, :cond_1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/badlogic/gdx/scenes/scene2d/ui/List$1;->this$0:Lcom/badlogic/gdx/scenes/scene2d/ui/List;

    invoke-virtual {p1, p3}, Lcom/badlogic/gdx/scenes/scene2d/ui/List;->touchDown(F)V

    const/4 p1, 0x1

    return p1
.end method
