.class Lcom/freeme/camera/FilmstripView$3;
.super Ljava/lang/Object;
.source "FilmstripView.java"

# interfaces
.implements Lcom/freeme/camera/filmstrip/DataAdapter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/freeme/camera/FilmstripView;->setDataAdapter(Lcom/freeme/camera/filmstrip/DataAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/freeme/camera/FilmstripView;


# direct methods
.method constructor <init>(Lcom/freeme/camera/FilmstripView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataInserted(ILcom/freeme/camera/filmstrip/ImageData;)V
    .locals 1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$500(Lcom/freeme/camera/FilmstripView;)[Lcom/freeme/camera/FilmstripView$ViewItem;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$1100(Lcom/freeme/camera/FilmstripView;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2, p1}, Lcom/freeme/camera/FilmstripView;->access$1300(Lcom/freeme/camera/FilmstripView;I)V

    :goto_0
    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$1400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$1400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1500(Lcom/freeme/camera/FilmstripView;)I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    :cond_1
    return-void
.end method

.method public onDataLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1100(Lcom/freeme/camera/FilmstripView;)V

    return-void
.end method

.method public onDataRemoved(ILcom/freeme/camera/filmstrip/ImageData;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1, p2}, Lcom/freeme/camera/FilmstripView;->access$1600(Lcom/freeme/camera/FilmstripView;ILcom/freeme/camera/filmstrip/ImageData;)V

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$1400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {p2}, Lcom/freeme/camera/FilmstripView;->access$1400(Lcom/freeme/camera/FilmstripView;)Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;

    move-result-object p2

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0}, Lcom/freeme/camera/FilmstripView;->access$1500(Lcom/freeme/camera/FilmstripView;)I

    move-result v0

    invoke-interface {p2, p1, v0}, Lcom/freeme/camera/filmstrip/FilmstripController$FilmstripListener;->onDataFocusChanged(II)V

    :cond_0
    return-void
.end method

.method public onDataUpdated(Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/FilmstripView$3;->this$0:Lcom/freeme/camera/FilmstripView;

    invoke-static {v0, p1}, Lcom/freeme/camera/FilmstripView;->access$1200(Lcom/freeme/camera/FilmstripView;Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V

    return-void
.end method
