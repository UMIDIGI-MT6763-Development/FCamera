.class public abstract Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;
.super Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellViewInterface<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected abstract bindModel()V
.end method

.method public getModel()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected onLayouted()V
    .locals 0

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/TuSdkLinearLayout;->onLayouted()V

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->willBindModel()V

    return-void
.end method

.method public setModel(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->isLayouted()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->willBindModel()V

    :cond_0
    return-void
.end method

.method protected willBindModel()V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellLinearLayout;->bindModel()V

    return-void
.end method
