import Component from "@glimmer/component";
import { inject as service } from "@ember/service";
import DButton from "discourse/components/d-button";
import { i18n } from "discourse-i18n";

export default class CustomCreateTopicButton extends Component {
  @service currentUser;
  @service composer;

  get canCreateTopic() {
    return this.currentUser?.can_create_topic;
  }

  createTopic = () => {
    this.composer.openNewTopic();
  };
}

<template>
  {{#if this.canCreateTopic}}
    <DButton
      @icon="plus"
      @label={{i18n "topic.create"}}
      @action={{this.createTopic}}
      class="btn-primary create-topic"
      id="create-topic"
    />
  {{/if}}
</template>
