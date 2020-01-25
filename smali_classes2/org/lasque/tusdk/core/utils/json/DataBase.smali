.class public interface abstract annotation Lorg/lasque/tusdk/core/utils/json/DataBase;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/lasque/tusdk/core/utils/json/DataBase;
        needSub = false
        read = true
        sub = ""
        write = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Inherited;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract needSub()Z
.end method

.method public abstract read()Z
.end method

.method public abstract sub()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method

.method public abstract write()Z
.end method
