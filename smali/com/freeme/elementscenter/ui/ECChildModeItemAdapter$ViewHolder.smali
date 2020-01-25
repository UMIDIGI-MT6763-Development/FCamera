.class public Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ECChildModeItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/ui/ECChildModeItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public mData:Lcom/freeme/elementscenter/ui/ECItemData;

.field public mDownloadBtn:Landroid/widget/Button;

.field public mIndicator:Landroid/widget/ImageView;

.field public mLoading:Landroid/widget/ImageView;

.field public mName:Landroid/widget/TextView;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mProgressRoot:Landroid/view/View;

.field public mPrompt:Landroid/widget/TextView;

.field public mThumbnail:Landroid/widget/ImageView;

.field public mThumbnailCover:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
