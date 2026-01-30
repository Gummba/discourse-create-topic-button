import DButton from "discourse/components/d-button";
import { i18n } from "discourse-i18n";

<template>
  {{#if this.canCreateTopic}}
    <DButton
      @action={{this.action}}
      @icon="plus"
      @disabled={{this.disabled}}
      @label={{this.label}}
      @tooltip={{if this.disabled (i18n "topic.create_disabled_category")}}
      id="create-topic"
      class={{this.btnClass}}
      insp-label="Create New Topic"
      data-transaction-name="Create New Topic"
      name="Create New Topic"
    />
  {{/if}}
</template>
