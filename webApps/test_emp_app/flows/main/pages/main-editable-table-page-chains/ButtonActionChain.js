define([
  'vb/action/actionChain',
  'vb/action/actions',
  'vb/action/actionUtils',
], (
  ActionChain,
  Actions,
  ActionUtils
) => {
  'use strict';

  class ButtonActionChain extends ActionChain {

    /**
     * @param {Object} context
     */
    async run(context) {
      const { $page, $flow, $application, $constants, $variables, $current } = context;

      const results = await ActionUtils.forEach($variables.EmployeeADP.data, async (item, index) => {

        const response = await Actions.callRest(context, {
          endpoint: 'businessObjects/update_Employee',
          uriParams: {
            'Employee_Id': $variables.EmployeeADP.data[index].id,
          },
          body: $variables.EmployeeADP.data[index],
        });
      }, { mode: 'serial' });

      await Actions.fireNotificationEvent(context, {
        summary: 'Employees has been updated.',
        displayMode: 'transient',
        type: 'confirmation',
      });

      await Actions.callChain(context, {
        chain: 'vbEnterListener',
      });
    }
  }

  return ButtonActionChain;
});
