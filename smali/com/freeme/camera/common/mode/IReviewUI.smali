.class public interface abstract Lcom/freeme/camera/common/mode/IReviewUI;
.super Ljava/lang/Object;
.source "IReviewUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;
    }
.end annotation


# virtual methods
.method public abstract hideReviewUI()V
.end method

.method public abstract initReviewUI(Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;)V
    .param p1    # Lcom/freeme/camera/common/mode/IReviewUI$ReviewSpec;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract showReviewUI(Landroid/graphics/Bitmap;)V
    .param p1    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
.end method

.method public abstract updateOrientation(I)V
.end method
