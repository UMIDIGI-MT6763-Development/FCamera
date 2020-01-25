.class public Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "DCPluginPanelView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GridViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/dc/data/PluginItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;


# direct methods
.method public constructor <init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method private handleClickEvent(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;I)V
    .locals 2

    iget-object v0, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    iget-object v1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getId()I

    move-result v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private handleInstall(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/freeme/elementscenter/R$id;->dc_install:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/dc/data/PluginItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->pluginUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p1, Lcom/freeme/elementscenter/dc/data/PluginItem;->pkgName:Ljava/lang/String;

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$200(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v0, v1, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$700(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;[Ljava/lang/String;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    return-void
.end method

.method private handleItemStatus(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;I)V
    .locals 4

    iget-object v0, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstalling:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    iget-object v2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstalling:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    sget v0, Lcom/freeme/elementscenter/R$string;->dc_disable:I

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(I)V

    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$300(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    sget p2, Lcom/freeme/elementscenter/R$drawable;->ec_thumbnail_comingsoon:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    sget p2, Lcom/freeme/elementscenter/R$string;->dc_uninstalling:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :pswitch_2
    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    sget p2, Lcom/freeme/elementscenter/R$string;->dc_update:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :pswitch_3
    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    sget p2, Lcom/freeme/elementscenter/R$string;->dc_installed:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :pswitch_4
    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    sget v2, Lcom/freeme/elementscenter/R$string;->dc_installing:I

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setText(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstalling:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :pswitch_5
    iget-object p2, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    sget p2, Lcom/freeme/elementscenter/R$string;->dc_install:I

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUninstall(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/freeme/elementscenter/R$id;->preview_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/freeme/elementscenter/dc/data/PluginItem;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$500(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/ECMainActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u63d2\u4ef6\u5378\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f\u5426\u5378\u8f7d\u6b64\u63d2\u4ef6\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u662f"

    new-instance v2, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;

    invoke-direct {v2, p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$2;-><init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;Lcom/freeme/elementscenter/dc/data/PluginItem;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u5426"

    new-instance v1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$1;

    invoke-direct {v1, p0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$1;-><init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateViewHolderData(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/freeme/elementscenter/dc/data/PluginItem;

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {v0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$000(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Lcom/freeme/elementscenter/dc/ui/DCMainFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Fragment;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p2, Lcom/freeme/elementscenter/dc/data/PluginItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableTypeRequest;->fitCenter()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    sget v1, Lcom/freeme/elementscenter/R$drawable;->dc_plugin_preview_default:I

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->placeholder(I)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/DrawableRequestBuilder;->crossFade()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    iget p2, p2, Lcom/freeme/elementscenter/dc/data/PluginItem;->status:I

    invoke-direct {p0, p1, p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->handleItemStatus(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;I)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->mItemList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->mItemList:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->mItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/dc/data/PluginItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->mItemList:Ljava/util/List;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->this$0:Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;

    invoke-static {p2}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;->access$400(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/freeme/elementscenter/R$layout;->dc_plugin_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;

    invoke-direct {p3, p0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;-><init>(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;)V

    sget v0, Lcom/freeme/elementscenter/R$id;->preview_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mPreview:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->installing:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstalling:Landroid/widget/ImageView;

    sget v0, Lcom/freeme/elementscenter/R$id;->dc_install:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p3, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;->mInstallBtn:Landroid/widget/Button;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;

    :goto_0
    invoke-direct {p0, p3, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->updateViewHolderData(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;I)V

    invoke-direct {p0, p3, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->handleClickEvent(Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter$ViewHolder;I)V

    return-object p2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/freeme/elementscenter/R$id;->dc_install:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->handleInstall(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/freeme/elementscenter/R$id;->preview_icon:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->handleUninstall(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/freeme/elementscenter/dc/data/PluginItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->mItemList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/freeme/elementscenter/dc/ui/DCPluginPanelView$GridViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
