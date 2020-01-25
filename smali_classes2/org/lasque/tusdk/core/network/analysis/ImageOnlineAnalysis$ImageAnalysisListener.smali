.class public interface abstract Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ImageAnalysisListener"
.end annotation


# virtual methods
.method public abstract onImageAnalysisCompleted(Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/lasque/tusdk/core/utils/json/JsonBaseBean;",
            ">(TT;",
            "Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;",
            ")V"
        }
    .end annotation
.end method
