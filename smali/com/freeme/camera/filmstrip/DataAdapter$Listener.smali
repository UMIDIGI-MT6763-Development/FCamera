.class public interface abstract Lcom/freeme/camera/filmstrip/DataAdapter$Listener;
.super Ljava/lang/Object;
.source "DataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/filmstrip/DataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onDataInserted(ILcom/freeme/camera/filmstrip/ImageData;)V
.end method

.method public abstract onDataLoaded()V
.end method

.method public abstract onDataRemoved(ILcom/freeme/camera/filmstrip/ImageData;)V
.end method

.method public abstract onDataUpdated(Lcom/freeme/camera/filmstrip/DataAdapter$UpdateReporter;)V
.end method
