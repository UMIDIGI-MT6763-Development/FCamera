.class Lcom/freeme/camera/FilmstripView$2;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView;->animateItemRemoval(ILcom/freeme/camera/filmstrip/ImageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripView;

.field final synthetic val$removedItem:Lcom/freeme/camera/FilmstripView$ViewItem;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/FilmstripView$ViewItem;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$2;->this$0:Lcom/freeme/camera/FilmstripView;

    iput-object p2, p0, Lcom/freeme/camera/FilmstripView$2;->val$removedItem:Lcom/freeme/camera/FilmstripView$ViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$2;->val$removedItem:Lcom/freeme/camera/FilmstripView$ViewItem;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/freeme/camera/FilmstripView$ViewItem;->removeViewFromHierarchy(Z)V

    return-void
.end method
