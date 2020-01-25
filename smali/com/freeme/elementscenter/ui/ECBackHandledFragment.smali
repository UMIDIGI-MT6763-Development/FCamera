.class public abstract Lcom/freeme/elementscenter/ui/ECBackHandledFragment;
.super Landroid/app/Fragment;
.source "ECBackHandledFragment.java"


# instance fields
.field protected mBackHandledInterface:Lcom/freeme/elementscenter/ui/ECBackHandledInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBackPressed()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcom/freeme/elementscenter/ui/ECBackHandledInterface;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/ui/ECBackHandledInterface;

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->mBackHandledInterface:Lcom/freeme/elementscenter/ui/ECBackHandledInterface;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "Hosting Activity must implement BackHandledInterface"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->mBackHandledInterface:Lcom/freeme/elementscenter/ui/ECBackHandledInterface;

    invoke-interface {v0, p0}, Lcom/freeme/elementscenter/ui/ECBackHandledInterface;->setSelectedFragment(Lcom/freeme/elementscenter/ui/ECBackHandledFragment;)V

    return-void
.end method
