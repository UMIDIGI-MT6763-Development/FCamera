.class public interface abstract Lcom/mediatek/accessor/operator/IMetaOperator;
.super Ljava/lang/Object;
.source "IMetaOperator.java"


# virtual methods
.method public abstract decrypt()V
.end method

.method public abstract encrypt()V
.end method

.method public abstract read()V
.end method

.method public abstract serialize()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end method

.method public abstract setData(Lcom/mediatek/accessor/meta/data/DataItem$DataCollections;)V
.end method

.method public abstract write()V
.end method
