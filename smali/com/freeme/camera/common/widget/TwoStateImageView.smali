.class public Lcom/freeme/camera/common/widget/TwoStateImageView;
.super Landroid/widget/ImageView;
.source "TwoStateImageView.java"


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f


# instance fields
.field private mFilterEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/freeme/camera/common/widget/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/freeme/camera/common/widget/TwoStateImageView;->mFilterEnabled:Z

    return-void
.end method


# virtual methods
.method public enableFilter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freeme/camera/common/widget/TwoStateImageView;->mFilterEnabled:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/freeme/camera/common/widget/TwoStateImageView;->mFilterEnabled:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/TwoStateImageView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, p1}, Lcom/freeme/camera/common/widget/TwoStateImageView;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
