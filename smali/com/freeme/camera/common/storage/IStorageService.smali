.class public interface abstract Lcom/freeme/camera/common/storage/IStorageService;
.super Ljava/lang/Object;
.source "IStorageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;
    }
.end annotation


# static fields
.field public static final STORAGE_IS_IN_SERVICES:I = 0x1

.field public static final STORAGE_IS_OUT_OF_SERVICES:I = 0x0

.field public static final STORAGE_IS_PREPARING:I = 0x2


# virtual methods
.method public abstract getCaptureStorageSpace()J
.end method

.method public abstract getFileDirectory()Ljava/lang/String;
.end method

.method public abstract getRecordStorageSpace()J
.end method

.method public abstract registerStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V
.end method

.method public abstract unRegisterStorageStateListener(Lcom/freeme/camera/common/storage/IStorageService$IStorageStateListener;)V
.end method
