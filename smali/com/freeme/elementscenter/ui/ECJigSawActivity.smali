.class public Lcom/freeme/elementscenter/ui/ECJigSawActivity;
.super Landroid/app/Activity;
.source "ECJigSawActivity.java"

# interfaces
.implements Lcom/freeme/elementscenter/ui/ECBackHandledInterface;


# instance fields
.field private mBackHandledFragment:Lcom/freeme/elementscenter/ui/ECBackHandledFragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigSawActivity;->mBackHandledFragment:Lcom/freeme/elementscenter/ui/ECBackHandledFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/ui/ECBackHandledFragment;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigSawActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/freeme/elementscenter/ui/ECJigSawActivity;->mBackHandledFragment:Lcom/freeme/elementscenter/ui/ECBackHandledFragment;

    instance-of v0, v0, Lcom/freeme/elementscenter/ui/ECJigsaw;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->popFragment(Landroid/app/Activity;)V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0}, Lcom/freeme/elementscenter/ui/ECJigSawActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/freeme/elementscenter/R$layout;->ec_main:I

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/ui/ECJigSawActivity;->setContentView(I)V

    new-instance p1, Lcom/freeme/elementscenter/ui/ECJigsaw;

    invoke-direct {p1}, Lcom/freeme/elementscenter/ui/ECJigsaw;-><init>()V

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/freeme/elementscenter/ui/ECFragmentUtil;->pushReplaceFragment(Landroid/app/Activity;Landroid/app/Fragment;Z)V

    return-void
.end method

.method public setSelectedFragment(Lcom/freeme/elementscenter/ui/ECBackHandledFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/ui/ECJigSawActivity;->mBackHandledFragment:Lcom/freeme/elementscenter/ui/ECBackHandledFragment;

    return-void
.end method
